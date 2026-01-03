part of 'local_tree_bloc.dart';

@freezed
class LocalTreeEvent with _$LocalTreeEvent {
  // A. APP / DATA LIFECYCLE

  /// Load all trees metadata (user trees)
  const factory LocalTreeEvent.loadAllTrees() = _LoadAllTrees;

  /// Load full Tree by tree_id
  const factory LocalTreeEvent.loadTree({
    required UniqueId treeId,
  }) = _LoadTree;

  /// Select tree (switch context)
  /// and Load nodes for a specific tree
  const factory LocalTreeEvent.selectTree({
    required UniqueId treeId,
    required UniqueId rootId,
  }) = _SelectTree;

  // B. TREE CRUD (METADATA)

  const factory LocalTreeEvent.createTree({
    required Tree tree,
    required TNode root,
  }) = _CreateTree;

  const factory LocalTreeEvent.updateTree({
    required Tree tree,
  }) = _UpdateTree;

  const factory LocalTreeEvent.deleteTree({
    required UniqueId treeId,
  }) = _DeleteTree;

  // C. NODE CRUD (LOCAL FIRST)

  /// Update node info (name, dates, gender, etc.)
  const factory LocalTreeEvent.updateNode({
    required TNode node,
  }) = _UpdateNode;

  /// Add a new partner (new node)
  const factory LocalTreeEvent.addPartners({
    required TNode node,
    required List<TNode> partnersList,
    required List<Relation> relationsList,
  }) = _AddPartner;

  /// Add existing node as partner
  const factory LocalTreeEvent.addExistingPartner({
    required TNode node,
    required UniqueId partnerId,
    required Relation relation,
  }) = _AddExistingPartner;

  /// Add child to an existing relation
  const factory LocalTreeEvent.addChildren({
    required List<TNode> children,
  }) = _AddChild;

  /// Delete node (partner / child)
  const factory LocalTreeEvent.deleteNode({
    required UniqueId nodeId,
  }) = _DeleteNode;

  const factory LocalTreeEvent.deleteChildren({
    required List<TNode> children,
  }) = _DeleteChildren;

  const factory LocalTreeEvent.deleteRelations({
    required List<Relation> relations,
  }) = _DeleteRelations;

  // D. VIEW / PROJECTION

  /// Change focus root
  const factory LocalTreeEvent.changeFocusRoot({
    required UniqueId nodeId,
  }) = _ChangeFocusRoot;

  /// Reset focus root to main root
  const factory LocalTreeEvent.resetFocusRoot() = _ResetFocusRoot;

  /// Change number of generations
  const factory LocalTreeEvent.changeGenerationLimit({
    required int generations,
  }) = _ChangeGenerationLimit;

  /// Toggle unknown nodes
  const factory LocalTreeEvent.toggleShowUnknown({
    required bool show,
  }) = _ToggleShowUnknown;

  // E. INTERNAL / SYSTEM

  /// Background sync completed / failed
  const factory LocalTreeEvent.syncFinished({
    required bool success,
    required int pendingSyncCount,
  }) = _SyncFinished;

  // F. SEARCH

  /// Search for a node by name
  const factory LocalTreeEvent.searchTree({
    required UniqueId nodeId,
  }) = _SearchTree;
}
