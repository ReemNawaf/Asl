import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/core/widgets/app_btn.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/draw_tree/draw_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/tree_settings_bloc.dart';
import 'package:asl/c_domain/local_tree_views/tree_nav_helpers.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class LayersWidget extends StatelessWidget {
  const LayersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 25.0,
            width: 25.0,
            child: SvgPicture.asset('assets/icons/layer.svg'),
          ),
          const SizedBox(width: 8),
          Text(
            getTr(context, 'generations')!,
            style: kBodyLarge.copyWith(
                color: kBlacksColor[200], fontWeight: FontWeight.w800),
          ),
        ],
      ),
      const SizedBox(height: 16.0),
      AppButton(
        onPressed: () =>
            zoomToNode(context, generation: Generation.grandchildren),
        label: getTr(context, 'grandchildren')!,
        textColor: kLeafColors[200]!,
        fillColor: kLeafColors[700]!,
        icon: SvgPicture.asset('assets/icons/leaf.svg'),
        hasIcon: true,
      ),
      const SizedBox(height: 16.0),
      AppButton(
        onPressed: () => zoomToNode(context, generation: Generation.parents),
        label: getTr(context, 'parents')!,
        textColor: kStemColors[200]!,
        fillColor: kStemColors[600]!,
        icon: SvgPicture.asset('assets/icons/stem.svg'),
        hasIcon: true,
      ),
      const SizedBox(height: 16.0),
      AppButton(
        onPressed: () => zoomToNode(context, generation: Generation.root),
        label: getTr(context, 'grandparents')!,
        textColor: kRootColors[200]!,
        fillColor: kRootColors[600]!,
        icon: SvgPicture.asset('assets/icons/root.svg'),
        hasIcon: true,
      ),
      BlocBuilder<LocalTreeBloc, LocalTreeState>(builder: (context, state) {
        final mainRootId = state.mainRootId?.getOrCrash();
        final focusRootId = state.focusRootId?.getOrCrash();

        if (focusRootId != mainRootId) {
          return Column(children: [
            const SizedBox(height: 20.0),
            GestureDetector(
                onTap: () => context.read<LocalTreeBloc>().add(
                    LocalTreeEvent.changeFocusRoot(nodeId: state.mainRootId!)),
                child: Text(
                  getTr(context, 'go_to_main_tree')!,
                  style: kCalloutStyle.copyWith(
                    decoration: TextDecoration.underline,
                    color: kBlacksColor[400],
                  ),
                )),
          ]);
        } else {
          return const SizedBox();
        }
      }),
    ]);
  }
}

void zoomToNode(BuildContext context, {required Generation generation}) {
  final local = context.read<LocalTreeBloc>().state;
  final rootIdKey =
      context.read<LocalTreeBloc>().state.focusRootId?.getOrCrash();

  if (rootIdKey == null) return;
  String? nodeId = rootIdKey;

  nodeId = firstDescendantAtGeneration(
    store: local.store,
    rootIdKey: rootIdKey,
    target: generation,
  );
  print('nodeId: $nodeId');

  // zoom to default
  context
      .read<TreeSettingsBloc>()
      .add(const TreeSettingsEvent.zoomChanged(ZOOM_DEF));

  context.read<DrawTreeBloc>().navigateToNode(nodeId ?? '');
}
