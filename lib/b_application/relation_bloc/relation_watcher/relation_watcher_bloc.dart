import 'dart:async';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/relation/i_relation_repository.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:asl/c_domain/relation/relation_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'relation_watcher_event.dart';
part 'relation_watcher_state.dart';
part 'relation_watcher_bloc.freezed.dart';

@injectable
class RelationWatcherBloc
    extends Bloc<RelationWatcherEvent, RelationWatcherState> {
  // link it to domain layer
  // inject the instance
  final IRelationRepository _relationRepository;

  RelationWatcherBloc(this._relationRepository)
      : super(const RelationWatcherState.initial()) {
    on<RelationWatcherEvent>(mapEventToState);
  }

  Future<void> mapEventToState(
    RelationWatcherEvent event,
    Emitter<RelationWatcherState> emit,
  ) async {
    await event.map(
      getAllRelations: (e) async {
        emit(const RelationWatcherState.getAllRelationsInProgress());
        print('---------- Relations | watchAllStarted');

        final possibleFailure =
            await _relationRepository.getAll(e.treeId, e.nodeId);
        emit(possibleFailure.fold(
          (f) => RelationWatcherState.gettingAllRelationsFailure(f),
          (relations) =>
              RelationWatcherState.gettingAllRelationsSuccess(relations ?? []),
        ));
      },
      getRelation: (e) async {
        emit(const RelationWatcherState.getRelationInProgress());
        final possibleFailure = await _relationRepository.getRelation(
            treeId: e.treeId, relationId: e.id);
        emit(possibleFailure.fold(
          (f) => RelationWatcherState.gettingRelationFailure(f),
          (relation) => RelationWatcherState.gettingRelationSuccess(relation),
        ));
      },
    );
  }
}
