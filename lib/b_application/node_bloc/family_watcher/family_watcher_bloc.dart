import 'dart:async';
import 'package:asl/c_domain/node/i_node_repository.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:asl/c_domain/relation/ufamily.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'family_watcher_event.dart';
part 'family_watcher_state.dart';
part 'family_watcher_bloc.freezed.dart';

@injectable
class FamilyWatcherBloc extends Bloc<FamilyWatcherEvent, FamilyWatcherState> {
  final INodeRepository _nodeRepository;

  FamilyWatcherBloc(this._nodeRepository)
      : super(const FamilyWatcherState.initial()) {
    on<FamilyWatcherEvent>(mapEventToState);
  }

  Future<void> mapEventToState(
    FamilyWatcherEvent event,
    Emitter<FamilyWatcherState> emit,
  ) async {
    await event.map(
      getNodeUpperFamily: (e) async {
        emit(const FamilyWatcherState.loadInProgress());
        print('LOG | upper family started');

        final possibleFailure =
            await _nodeRepository.getNodeUpperFamily(node: e.node);
        emit(possibleFailure.fold(
          (f) => FamilyWatcherState.loadFailure(f),
          (r) => FamilyWatcherState.loadSuccess(r),
        ));
      },
    );
  }
}
