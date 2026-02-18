import 'dart:async';

import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_builder.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_mutations.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_store.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:asl/c_domain/node/i_node_repository.dart';
import 'package:asl/c_domain/relation/i_relation_repository.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:asl/c_domain/relation/relation_failure.dart';
import 'package:asl/c_domain/tree/i_tree_repository.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:asl/c_domain/tree/tree_failure.dart';
import 'package:asl/c_domain/tree/tree_settings.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'local_tree_event.dart';
part 'local_tree_state.dart';
part 'local_tree_bloc.freezed.dart';

@injectable
class LocalTreeBloc extends Bloc<LocalTreeEvent, LocalTreeState> {
  final ITreeRepository _treeRepo;
  final INodeRepository _nodeRepo;
  final IRelationRepository _relationRepo;

  LocalTreeBloc(
    this._treeRepo,
    this._nodeRepo,
    this._relationRepo,
  ) : super(LocalTreeState.initial()) {
    on<LocalTreeEvent>(_onEvent);
  }

  Future<void> _onEvent(
    LocalTreeEvent event,
    Emitter<LocalTreeState> emit,
  ) async {
    await event.map(
      // --------------------------------------------
      // A) APP / DATA LIFECYCLE
      // --------------------------------------------
      loadAllTrees: (e) async {
        emit(state.copyWith(
          isLoadingTrees: true,
          treeFailureOption: none(),
        ));

        final either = await _treeRepo.getAll();
        either.fold(
          (f) => emit(state.copyWith(
            isLoadingTrees: false,
            treeFailureOption: some(f),
          )),
          (trees) => emit(state.copyWith(
            isLoadingTrees: false,
            trees: trees,
            treeFailureOption: none(),
          )),
        );

        // call select tree
        if (state.trees.isNotEmpty) {
          add(LocalTreeEvent.selectTree(
              treeId: state.trees.first.treeId,
              rootId: state.trees.first.rootId));
        }
      },

      loadTree: (e) async {
        emit(state.copyWith(
          isLoadingTree: true,
          treeFailureOption: none(),
          nodeFailureOption: none(),
        ));

        // 1) Load the tree
        final eitherTree = await _treeRepo.get(e.treeId);
        final tree = eitherTree.fold((_) => null, (t) => t);

        if (tree == null) {
          emit(state.copyWith(
            isLoadingTree: false,
            treeFailureOption: some(const TreeFailure.unexpected()),
          ));
          return;
        }

        // Set root ids now that we have the tree
        emit(state.copyWith(
          selectedTreeId: tree.treeId,
          mainRootId: tree.rootId,
          focusRootId: tree.rootId,
        ));

        // 2) Load tree graph +
        final graphFuture = _treeRepo.getTreeGraph(treeId: e.treeId);

        // 3) settings (in parallel)
        final settingsFuture = _treeRepo
            .loadSettings(e.treeId)
            .then(
              (either) => either.fold((_) => TreeSettings.empty(), (r) => r),
            )
            .catchError((_) => TreeSettings.empty());

        final eitherGraph = await graphFuture;
        final settings = await settingsFuture;

        eitherGraph.fold(
          (f) => emit(state.copyWith(
            isLoadingTree: false,
            treeFailureOption: some(f),
          )),
          (data) {
            final store = TreeGraphBuilder.fromCollections(
              nodes: data.nodes,
              relations: data.relations,
            );

            emit(state.copyWith(
              isLoadingTree: false,
              trees: [tree],
              store: store,
              settings: settings,
              treeFailureOption: none(),
              nodeFailureOption: none(),
            ));
          },
        );
      },

      selectTree: (e) async {
        // when selecting a tree

        // 1. change the selectedTreeId
        emit(state.copyWith(
          isLoadingTree: true,
          selectedTreeId: e.treeId,
          mainRootId: e.rootId,
          focusRootId: e.rootId,
          nodeFailureOption: none(),
        ));

        // 2. Load tree graph and settings in parallel
        final graphFuture = _treeRepo.getTreeGraph(treeId: e.treeId);

        final settingsFuture = _treeRepo
            .loadSettings(e.treeId)
            .then(
              (either) => either.fold((_) => TreeSettings.empty(), (r) => r),
            )
            .catchError((_) => TreeSettings.empty());

        final eitherGraph = await graphFuture;
        final settings = await settingsFuture;

        eitherGraph.fold(
          (f) => emit(state.copyWith(
            isLoadingTree: false,
            treeFailureOption: some(f),
          )),
          (data) {
            // build canonical store
            final store = TreeGraphBuilder.fromCollections(
              nodes: data.nodes,
              relations: data.relations,
            );

            emit(state.copyWith(
              isLoadingTree: false,
              store: store,
              settings: settings,
              nodeFailureOption: none(),
            ));
          },
        );
      },

      // --------------------------------------------
      // B) TREE CRUD (METADATA)
      // --------------------------------------------
      createTree: (e) async {
        // Build a fresh store that contains at least the root node
        final nextStore = TreeGraphStore(
          nodesById: {
            ...state.store.nodesById,
            e.root.nodeId.asKey(): e.root,
          },
          relationsById: {
            ...state.store.relationsById,
          },
          relationIdsByNodeId: {
            ...state.store.relationIdsByNodeId,
            e.root.nodeId.asKey():
                e.root.relations.map((x) => x.asKey()).toSet().toList(),
          },
          childrenIdsByRelationId: {
            ...state.store.childrenIdsByRelationId,
          },
        );

        // Optimistic local update
        emit(state.copyWith(
          trees: [...state.trees, e.tree],
          selectedTreeId: e.tree.treeId,
          mainRootId: e.root.nodeId,
          focusRootId: e.root.nodeId,
          store: nextStore,
          settings: TreeSettings.empty(),
          treeFailureOption: none(),
          lastSyncSuccess: none(),
          pendingSyncCount: state.pendingSyncCount + 1,
        ));

        // Persist to Firestore
        final either = await _treeRepo.create(tree: e.tree, root: e.root);

        either.fold(
          (f) => emit(state.copyWith(
            pendingSyncCount: (state.pendingSyncCount - 1).clamp(0, 1 << 30),
            treeFailureOption: some(f),
            lastSyncSuccess: some(false),
          )),
          (_) => emit(state.copyWith(
            pendingSyncCount: (state.pendingSyncCount - 1).clamp(0, 1 << 30),
            lastSyncSuccess: some(true),
          )),
        );
      },

      updateTree: (e) async {
        _syncStart(emit);

        // local list update
        final updatedList = state.trees
            .map((t) => t.treeId == e.tree.treeId ? e.tree : t)
            .toList();
        emit(state.copyWith(trees: updatedList));

        final either = await _treeRepo.update(e.tree);

        either.fold(
          (f) => _syncEnd(false),
          (_) => _syncEnd(true),
        );
      },

      deleteTree: (e) async {
        // delete the tree from local trees list
        final nextTrees =
            state.trees.where((t) => t.treeId != e.treeId).toList();

        // if the deleted tree is the selected tree
        if (state.selectedTreeId == e.treeId) {
          // and the there is other trees
          if (nextTrees.isNotEmpty) {
            // call select tree, to load another tree
            // Switch to another tree (this will load its store in selectTree)
            final nextSelected = nextTrees.first;

            emit(state.copyWith(
              trees: nextTrees,
              treeFailureOption: none(),
              lastSyncSuccess: none(),
            ));

            add(LocalTreeEvent.selectTree(
                treeId: nextSelected.treeId, rootId: nextSelected.rootId));

            emit(state.copyWith(trees: nextTrees));
          } else {
            // there is no other trees,
            // make it null to show create new tree panel
            emit(state.copyWith(
              trees: nextTrees,
              selectedTreeId: null,
              mainRootId: null,
              focusRootId: null,
              store: TreeGraphStore.empty(),
              settings: TreeSettings.empty(),
              treeFailureOption: none(),
              lastSyncSuccess: none(),
            ));
          }
        } else {
          // Deleted tree wasn't selected, just update list
          emit(state.copyWith(
            trees: nextTrees,
            treeFailureOption: none(),
            lastSyncSuccess: none(),
          ));
        }

        // delete the tree
        _syncStart(emit);
        final either = await _treeRepo.delete(treeId: e.treeId);

        either.fold(
          (f) => _syncEnd(false),
          (_) => _syncEnd(true),
        );
      },

      // --------------------------------------------
      // C) NODE CRUD (LOCAL FIRST)
      // --------------------------------------------
      updateNode: (e) async {
        // local-first (O(1))
        final nextStore = upsertNode(state.store, e.node);

        emit(state.copyWith(
          store: nextStore,
        ));

        // background sync (same as before)
        _syncStart(emit);
        unawaited(_syncNodeUpdate(e.node));
      },

      addPartners: (e) async {
        // Update canonical store (O(1))

        final nextStore = applyAddPartner(
          store: state.store,
          relationsList: e.relationsList,
          partnersList: e.partnersList,
        );

        emit(state.copyWith(store: nextStore));

        // background sync (same as before)
        _syncStart(emit);
        unawaited(_syncAddPartners(e.node, e.partnersList, e.relationsList));
      },

      addExistingPartner: (e) async {
        final selectedTreeId = state.selectedTreeId;
        if (selectedTreeId == null) return;

        // Resolve partner node (store first, else fetch)
        TNode? partner = state.store.nodesById[e.partnerId.asKey()];

        if (partner == null) {
          final eitherPartner = await _treeRepo.getNode(
            treeId: e.relation.partnerTreeId,
            nodeId: e.partnerId,
          );
          partner = eitherPartner.fold((_) => null, (r) => r);
        }

        if (partner == null) {
          // can't proceed if partner couldn't be resolved
          (_) => _syncEnd(false);
          return;
        }

        // Update canonical store
        final nextStore = applyAddPartner(
          store: state.store,
          relationsList: [e.relation],
          partnersList: [partner],
        );

        emit(state.copyWith(store: nextStore));

        // background sync
        _syncStart(emit);
        unawaited(_syncAddExistingPartner(e.node, e.partnerId, e.relation));
      },

      addChildren: (e) async {
        // Update canonical store (O(1))
        final nextStore = applyAddChildren(
          store: state.store,
          children: e.children,
        );

        emit(state.copyWith(store: nextStore));

        // background sync (same as before)
        _syncStart(emit);
        unawaited(_syncAddChild(e.children));
      },

      deleteNode: (e) async {
        final selectedTreeId = state.selectedTreeId;
        if (selectedTreeId == null) return;

        final nextStore = applyDeleteNode(
          store: state.store,
          toDeleteId: e.nodeId,
        );

        // If focus root was deleted → reset to main root
        final focusId = state.focusRootId;
        final shouldResetFocus =
            focusId != null && focusId.asKey() == e.nodeId.asKey();

        emit(state.copyWith(
          store: nextStore,
          focusRootId: shouldResetFocus ? state.mainRootId : state.focusRootId,
        ));

        // background sync
        _syncStart(emit);
        unawaited(_syncDeleteNode(selectedTreeId, e.nodeId));
      },

      deleteChildren: (e) async {
        if (e.children.isEmpty) return;

        // Local-first store update
        final nextStore = applyDeleteChildren(
          store: state.store,
          children: e.children,
        );

        emit(state.copyWith(store: nextStore));

        // Background sync
        _syncStart(emit);
        unawaited(_syncDeleteChildren(e.children));
      },

      deleteRelations: (e) async {
        // Local-first store update
        final nextStore = applyDeleteRelationsCascade(
            store: state.store, relations: e.relations);

        emit(state.copyWith(store: nextStore));

        // Background sync
        _syncStart(emit);
        unawaited(_syncDeleteRelationsCascade(relations: e.relations));
      },

      changeOrderInFamily: (e) async {
        final selectedTreeId = state.selectedTreeId;
        if (selectedTreeId == null) return;

        // Local-first store update (O(1))
        final nextStore = applyChangeOrderInFamily(
          store: state.store,
          relationId: e.relationId,
          nodeId: e.nodeId,
          order: e.order,
        );

        emit(state.copyWith(store: nextStore));

        // Background sync
        _syncStart(emit);
        unawaited(_syncChangeOrderInFamily(
          selectedTreeId,
          e.nodeId,
          e.relationId,
          e.order,
        ));
      },

      changePartnerOrder: (e) async {
        final selectedTreeId = state.selectedTreeId;
        if (selectedTreeId == null) return;

        // Local-first store update (O(1))
        final nextStore = applyChangePartnerOrder(
          store: state.store,
          nodeId: e.nodeId,
          relationId: e.relationId,
          order: e.order,
        );

        emit(state.copyWith(store: nextStore));

        // Background sync
        _syncStart(emit);
        unawaited(_syncChangePartnerOrder(
          selectedTreeId,
          e.nodeId,
          e.relationId,
          e.order,
        ));
      },

      changePartnerMarriageStatus: (e) async {
        final selectedTreeId = state.selectedTreeId;
        if (selectedTreeId == null) return;

        // Local-first store update (O(1))
        final nextStore = applyChangePartnerMarriageStatus(
          store: state.store,
          relationId: e.relationId,
          status: e.status,
        );

        emit(state.copyWith(store: nextStore));

        // Background sync
        _syncStart(emit);
        unawaited(_syncChangePartnerMarriageStatus(
          selectedTreeId,
          e.relationId,
          e.status,
        ));
      },

      // --------------------------------------------
      // D) VIEW / PROJECTION
      // --------------------------------------------
      changeFocusRoot: (e) {
        emit(state.copyWith(focusRootId: e.nodeId));
      },

      resetFocusRoot: (e) {
        final main = state.mainRootId;
        if (main == null) return;
        emit(state.copyWith(focusRootId: main));
      },

      changeGenerationLimit: (e) async {
        // Here "generations" is non-null per event.
        // If you want "all generations", call rebuildProjection with generationLimit = null
        emit(state.copyWith(
            settings: state.settings!
                .copyWith(numberOfGenerationOpt: e.generations)));

        final treeId = state.selectedTreeId;
        if (treeId != null) {
          _syncStart(emit);
          unawaited(_syncUpdateGenerations(treeId, e.generations));
        }
      },

      toggleShowUnknown: (e) async {
        emit(state.copyWith(
            settings: state.settings!.copyWith(isShowUnknown: e.show)));

        final treeId = state.selectedTreeId;
        if (treeId != null) {
          _syncStart(emit);
          unawaited(_syncUpdateShowUnknown(treeId, e.show));
        }
      },

      searchTree: (e) {
        // emit(state.copyWith(nodeFocusId: e.nodeId));
      },

      // --------------------------------------------
      // E) INTERNAL / SYSTEM
      // --------------------------------------------
      syncFinished: (e) async {
        emit(state.copyWith(
          pendingSyncCount: e.pendingSyncCount,
          lastSyncSuccess: some(e.success),
        ));
      },
    );
  }

  // ============================================================
  // Background sync ops (fire-and-forget)
  // ============================================================

  Future<void> _syncNodeUpdate(TNode node) async {
    try {
      final either = await _nodeRepo.update(treeId: node.treeId, node: node);
      either.fold(
        (_) => _syncEnd(false),
        (_) => _syncEnd(true),
      );
    } catch (_) {
      _syncEnd(false);
    }
  }

  Future<void> _syncAddPartners(TNode node, List<TNode> partnersList,
      List<Relation> relationsList) async {
    try {
      final either = await _relationRepo.create(
          node: node, partnersList: partnersList, relationsList: relationsList);
      either.fold(
        (_) => _syncEnd(false),
        (_) => _syncEnd(true),
      );
    } catch (_) {
      _syncEnd(false);
    }
  }

  Future<void> _syncAddExistingPartner(
      TNode node, UniqueId partnerId, Relation relation) async {
    try {
      final either = await _relationRepo.createWithExistingPartner(
          node: node, partnerId: partnerId, relation: relation);
      either.fold(
        (_) => _syncEnd(false),
        (_) => _syncEnd(true),
      );
    } catch (_) {
      _syncEnd(false);
    }
  }

  Future<void> _syncAddChild(List<TNode> children) async {
    try {
      if (children.isNotEmpty) {
        final either = await _relationRepo.addChildren(
          children: children,
        );
        either.fold(
          (_) => _syncEnd(false),
          (_) => _syncEnd(true),
        );
      }
    } catch (_) {
      _syncEnd(false);
    }
  }

  Future<void> _syncDeleteNode(UniqueId treeId, UniqueId nodeId) async {
    try {
      final either = await _nodeRepo.delete(treeId: treeId, nodeId: nodeId);
      either.fold(
        (_) => _syncEnd(false),
        (_) => _syncEnd(true),
      );
    } catch (_) {
      _syncEnd(false);
    }
  }

  Future<void> _syncDeleteChildren(List<TNode> children) async {
    try {
      final either = await _relationRepo.deleteChildren(children: children);
      either.fold(
        (_) => _syncEnd(false),
        (_) => _syncEnd(true),
      );
    } catch (_) {
      _syncEnd(false);
    }
  }

  Future<void> _syncDeleteRelationsCascade({
    required List<Relation> relations,
  }) async {
    try {
      if (relations.isEmpty) {
        _syncEnd(false);
        return;
      }

      final either = await _relationRepo.deleteRelation(
        relations: relations,
      );

      either.fold(
        (_) => _syncEnd(false),
        (_) => _syncEnd(true),
      );
    } catch (_) {
      _syncEnd(false);
    }
  }

  Future<void> _syncUpdateGenerations(UniqueId treeId, int generations) async {
    try {
      await _treeRepo.updateNumberOfGeneration(
          treeId: treeId, option: generations);
      _syncEnd(false);
    } catch (_) {
      (_) => _syncEnd(false);
    }
  }

  Future<void> _syncUpdateShowUnknown(UniqueId treeId, bool show) async {
    try {
      await _treeRepo.updateIsShowUnknown(treeId: treeId, isShowUnknown: show);
      _syncEnd(false);
    } catch (_) {
      (_) => _syncEnd(false);
    }
  }

  void _syncStart(Emitter<LocalTreeState> emit) {
    emit(state.copyWith(
      pendingSyncCount: state.pendingSyncCount + 1,
      lastSyncSuccess: none(),
    ));
  }

  void _syncEnd(bool success) {
    final nextCount = (state.pendingSyncCount - 1);
    add(LocalTreeEvent.syncFinished(
      success: success,
      pendingSyncCount: nextCount < 0 ? 0 : nextCount,
    ));
  }

  Future<void> _syncChangeOrderInFamily(
    UniqueId treeId,
    UniqueId nodeId,
    UniqueId relationId,
    int order,
  ) async {
    try {
      final either = await _nodeRepo.changeOrderInFamily(
        treeId: treeId,
        nodeId: nodeId,
        relationId: relationId,
        order: order,
      );
      either.fold(
        (_) => _syncEnd(false),
        (_) => _syncEnd(true),
      );
    } catch (_) {
      _syncEnd(false);
    }
  }

  Future<void> _syncChangePartnerOrder(
    UniqueId treeId,
    UniqueId nodeId,
    UniqueId relationId,
    int order,
  ) async {
    try {
      final either = await _nodeRepo.changePartnerOrder(
        treeId: treeId,
        nodeId: nodeId,
        relationId: relationId,
        order: order,
      );
      either.fold(
        (_) => _syncEnd(false),
        (_) => _syncEnd(true),
      );
    } catch (_) {
      _syncEnd(false);
    }
  }

  Future<void> _syncChangePartnerMarriageStatus(
    UniqueId treeId,
    UniqueId relationId,
    MarriageStatus status,
  ) async {
    try {
      // Get the relation from the repository to ensure we have the latest data
      final eitherRelation = await _relationRepo.get(
        treeId: treeId,
        relationId: relationId,
      );

      final relation = eitherRelation.fold(
        (_) => null,
        (r) => r,
      );

      if (relation == null) {
        _syncEnd(false);
        return;
      }

      // Update the relation with the new marriage status
      final updatedRelation = relation.copyWith(marriageStatus: status);

      // Get the partner node - try from store first, then fetch if needed
      TNode? partner;

      // Try to get partner from store using relation's partnerNode or by ID
      if (relation.partnerNode != null) {
        partner = relation.partnerNode;
      } else {
        // Get partner ID from relation (mother or father depending on context)
        // For simplicity, we'll try to get it from the store first
        final partnerId =
            relation.mother; // or relation.father, depending on your logic
        partner = state.store.nodesById[partnerId.asKey()];

        // If not in store, fetch it
        if (partner == null) {
          final eitherPartner = await _treeRepo.getNode(
            treeId: relation.partnerTreeId,
            nodeId: partnerId,
          );
          partner = eitherPartner.fold((_) => null, (r) => r);
        }
      }

      if (partner == null) {
        _syncEnd(false);
        return;
      }

      // Update the relation using the repository
      final either = await _relationRepo.update(
        partner: partner,
        relation: updatedRelation,
      );

      either.fold(
        (_) => _syncEnd(false),
        (_) => _syncEnd(true),
      );
    } catch (_) {
      _syncEnd(false);
    }
  }
}
