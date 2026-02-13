import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/widgets/des_loading_wdg.dart';
import 'package:asl/a_presentation/tree/tree_view.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/draw_tree/draw_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/tree_settings_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/zoom_bloc/tree_zoom_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InteractiveView extends StatefulWidget {
  const InteractiveView({super.key});

  @override
  State<InteractiveView> createState() => _InteractiveViewState();
}

class _InteractiveViewState extends State<InteractiveView> {
  String? _currentRootId;

  // ── Pan / Zoom state ──
  Offset _pan = Offset.zero; // translation in viewport coords
  double _scale = ZOOM_DEF; // current scale

  // For pinch gesture tracking
  double _gestureStartScale = 1.0;
  Offset _gestureStartPan = Offset.zero;
  Offset? _gestureFocalPoint;

  // Key for the viewport container (replaces viewerKey for sizing)
  final GlobalKey _viewportKey = GlobalKey();

  // ── Helpers ──

  // Add to the state fields at the top:
  void _navigateToScenePoint(Offset scenePoint, {double? scale}) {
    final center = _viewportCenter();
    if (center == null) return;

    final targetScale = (scale ?? ZOOM_DEF).clamp(MIN_ZOOM, MAX_ZOOM);

    setState(() {
      _scale = targetScale;
      _pan = center - scenePoint * targetScale;
    });

    _syncController();
  }

  /// Applies a new scale, keeping [focalPoint] (in viewport coords) fixed.
  void _zoomTo(double newScale, Offset focalPoint) {
    final clampedScale = newScale.clamp(MIN_ZOOM, MAX_ZOOM);

    // Point in scene coords under the focal point BEFORE zoom
    final scenePoint = _toScene(focalPoint);

    // After changing scale, we need new pan so that scenePoint
    // still maps to focalPoint:
    //   focalPoint = scenePoint * clampedScale + newPan
    //   newPan = focalPoint - scenePoint * clampedScale
    final newPan = focalPoint - scenePoint * clampedScale;

    setState(() {
      _scale = clampedScale;
      _pan = newPan;
    });

    _syncController();
  }

  /// Convert viewport coords → scene coords using current transform.
  Offset _toScene(Offset viewportPoint) {
    return (viewportPoint - _pan) / _scale;
  }

  /// Push current _pan/_scale into the TransformationController
  /// so that other code (e.g. navigateToNode) still works.
  void _syncController() {
    final controller = context.read<DrawTreeBloc>().state.controller;
    controller.value = Matrix4.identity()
      ..translate(_pan.dx, _pan.dy)
      ..scale(_scale);
  }

  /// Get viewport center in local coords.
  Offset? _viewportCenter() {
    final box = _viewportKey.currentContext?.findRenderObject() as RenderBox?;
    if (box == null || !box.hasSize) return null;
    return box.size.center(Offset.zero);
  }

  // ── Slider zoom handler ──

  void _handleSliderZoom(double newScale) {
    final center = _viewportCenter();
    if (center == null) return;
    _zoomTo(newScale, center);
  }

  // ── Gesture callbacks ──

  void _onScaleStart(ScaleStartDetails details) {
    _gestureStartScale = _scale;
    _gestureStartPan = _pan;
    _gestureFocalPoint = details.localFocalPoint;
  }

  void _onScaleUpdate(ScaleUpdateDetails details) {
    if (_gestureFocalPoint == null) return;

    final newScale =
        (_gestureStartScale * details.scale).clamp(MIN_ZOOM, MAX_ZOOM);

    // Scene point under the initial focal point
    final scenePoint =
        (_gestureFocalPoint! - _gestureStartPan) / _gestureStartScale;

    // New pan: keep scenePoint under current focal point
    final newPan = details.localFocalPoint - scenePoint * newScale;

    setState(() {
      _scale = newScale;
      _pan = newPan;
    });

    _syncController();
  }

  void _onScaleEnd(ScaleEndDetails details) {
    _gestureFocalPoint = null;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        final bloc = context.read<DrawTreeBloc>();
        bloc.navigateToScenePoint = _navigateToScenePoint;
        bloc.viewportKey = _viewportKey;
      }
    });
  }

  @override
  void dispose() {
    context.read<DrawTreeBloc>().navigateToScenePoint = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalTreeBloc, LocalTreeState>(
      builder: (context, treeState) {
        // Only draw tree once when widget first loads
        if (treeState.focusRootId != null &&
            treeState.focusRootId?.getOrCrash() != _currentRootId) {
          _currentRootId = treeState.focusRootId?.getOrCrash();
          debugPrint('DRAWING TREE | root changed to $_currentRootId');

          // Reset pan/zoom when root changes
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) {
              setState(() {
                _scale = ZOOM_DEF;
                _pan = Offset.zero;
              });
              _syncController();

              context.read<DrawTreeBloc>().add(
                    DrawTreeEvent.drawNewTree(
                      store: treeState.store,
                      rootId: treeState.focusRootId!,
                      maxGenerations: NUM_GEN_OPTIONS[
                          treeState.settings!.numberOfGenerationOpt]['number'],
                      context: context,
                    ),
                  );
            }
          });
        }

        return BlocBuilder<DrawTreeBloc, DrawTreeState>(
            builder: (context, drawTreeState) {
          // Show loading when graph is not ready
          if (drawTreeState.graph == null || drawTreeState.builder == null) {
            return const Center(
              child: DescriptiveLoadingWidget(
                loading: TreeDisplayLoading.DrawTree,
              ),
            );
          }
          return BlocListener<LocalTreeBloc, LocalTreeState>(
              // Listen for store changes (when nodes are updated)
              listenWhen: (prev, curr) {
                // Redraw tree when store changes (node updates, additions, deletions)
                return prev.store != curr.store &&
                    curr.focusRootId != null &&
                    curr.store.nodesById.isNotEmpty;
              },
              listener: (context, state) {
                // Redraw tree with updated store
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  if (mounted && state.focusRootId != null) {
                    context.read<DrawTreeBloc>().add(
                          DrawTreeEvent.drawNewTree(
                            store: state.store,
                            rootId: state.focusRootId!,
                            maxGenerations: NUM_GEN_OPTIONS[state
                                .settings!.numberOfGenerationOpt]['number'],
                            context: context,
                          ),
                        );
                  }
                });
              },
              child: BlocListener<TreeZoomBloc, TreeZoomState>(
                listenWhen: (prev, curr) =>
                    (curr.zoomScale - prev.zoomScale).abs() > 0.0001,
                listener: (context, state) {
                  _handleSliderZoom(state.zoomScale);
                },
                child: BlocListener<TreeSettingsBloc, TreeSettingsState>(
                  listenWhen: (prev, curr) =>
                      prev.numberOfGenerations != curr.numberOfGenerations,
                  listener: (context, state) {
                    debugPrint('🔄 Reset due to generation change');

                    // Reset zoom/pan
                    setState(() {
                      _scale = ZOOM_DEF;
                      _pan = Offset.zero;
                    });
                    _syncController();

                    if (treeState.focusRootId != null) {
                      debugPrint('REDRAWING TREE | ${treeState.focusRootId}');
                      context.read<DrawTreeBloc>().add(
                            DrawTreeEvent.drawNewTree(
                              store: treeState.store,
                              rootId: treeState.focusRootId!,
                              maxGenerations:
                                  NUM_GEN_OPTIONS[state.numberOfGenerations]
                                      ['number'],
                              context: context,
                            ),
                          );
                    }
                  },
                  // ── Replace InteractiveViewer with manual Transform ──
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return GestureDetector(
                        key: _viewportKey,
                        onScaleStart: _onScaleStart,
                        onScaleUpdate: _onScaleUpdate,
                        onScaleEnd: _onScaleEnd,
                        behavior: HitTestBehavior.opaque,
                        child: ClipRect(
                          child: OverflowBox(
                            alignment: Alignment.topLeft,
                            minWidth: 0,
                            minHeight: 0,
                            maxWidth: double.infinity,
                            maxHeight: double.infinity,
                            child: Transform(
                              transform: Matrix4.identity()
                                ..translate(_pan.dx, _pan.dy)
                                ..scale(_scale),
                              child: const TreeView(),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ));
        });
      },
    );
  }
}
