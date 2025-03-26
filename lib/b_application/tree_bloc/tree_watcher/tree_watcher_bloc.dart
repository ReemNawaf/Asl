import 'dart:async';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/tree/i_tree_repository.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:asl/c_domain/tree/tree_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tree_watcher_event.dart';
part 'tree_watcher_state.dart';
part 'tree_watcher_bloc.freezed.dart';

@injectable
class TreeWatcherBloc extends Bloc<TreeWatcherEvent, TreeWatcherState> {
  // link it to domain layer
  // inject the instance
  final ITreeRepository _treeRepository;

  TreeWatcherBloc(this._treeRepository)
      : super(const TreeWatcherState.initial()) {
    on<TreeWatcherEvent>(mapEventToState);
  }

  Future<void> mapEventToState(
    TreeWatcherEvent event,
    Emitter<TreeWatcherState> emit,
  ) async {
    await event.map(
      getAllTrees: (e) async {
        emit(const TreeWatcherState.getAllTreesInProgress());
        print('---------- Trees | watchAllStarted');

        final possibleFailure = await _treeRepository.watchAll();
        emit(possibleFailure.fold(
          (f) => TreeWatcherState.gettingAllTreesFailure(f),
          (trees) => TreeWatcherState.gettingAllTreesSuccess(trees),
        ));
      },
      getTree: (e) async {
        emit(const TreeWatcherState.getTreeInProgress());
        final possibleFailure = await _treeRepository.getTree(e.treeId);
        emit(possibleFailure.fold(
          (f) => TreeWatcherState.gettingTreeFailure(f),
          (node) => TreeWatcherState.gettingTreeSuccess(node),
        ));
      },
    );
  }
}
