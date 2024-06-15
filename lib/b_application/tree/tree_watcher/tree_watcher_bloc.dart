import 'dart:async';

import 'package:asl/c_domain/tree/i_tree_repository.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:asl/c_domain/tree/tree_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tree_watcher_bloc.freezed.dart';
part 'tree_watcher_event.dart';
part 'tree_watcher_state.dart';

@injectable
class TreeWatcherBloc extends Bloc<TreeWatcherEvent, TreeWatcherState> {
  // link it to domain layer
  // inject the instance
  final ITreeRepository _treeRepository;

  TreeWatcherBloc(this._treeRepository)
      : super(const TreeWatcherState.initial()) {
    on<TreeWatcherEvent>(mapEventToState);
  }

  StreamSubscription<Either<TreeFailure, List<Tree>>>? _treeStreamSubscription;

  Future<void> mapEventToState(
    TreeWatcherEvent event,
    Emitter<TreeWatcherState> emit,
  ) async {
    await event.map(
      watchAllStarted: (e) async {
        const TreeWatcherState.loadInProgress();

        _treeStreamSubscription = _treeRepository.watchAll().listen(
              (failureOrTrees) =>
                  add(TreeWatcherEvent.treesReceived(failureOrTrees)),
            );
      },
      treesReceived: (e) async {
        e.failureOrTrees.fold(
          (f) => TreeWatcherState.loadFailure(f),
          (trees) => TreeWatcherState.loadSuccess(trees),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _treeStreamSubscription?.cancel();
    return super.close();
  }
}
