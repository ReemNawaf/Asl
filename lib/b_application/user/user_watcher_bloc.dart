import 'dart:async';

import 'package:asl/c_domain/app_user/i_user_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:asl/c_domain/app_user/user.dart';
import 'package:asl/c_domain/app_user/user_failure.dart';

part 'user_watcher_event.dart';
part 'user_watcher_state.dart';
part 'user_watcher_bloc.freezed.dart';

@injectable
class UserWatcherBloc extends Bloc<UserWatcherEvent, UserWatcherState> {
  // link it to domain layer
  // inject the instance
  final IUserRepository _userRepository;

  UserWatcherBloc(this._userRepository)
      : super(const UserWatcherState.initial()) {
    on<UserWatcherEvent>(mapUserWatchEventToState);
  }

  Future<void> mapUserWatchEventToState(
    UserWatcherEvent event,
    Emitter<UserWatcherState> emit,
  ) async {
    await event.map(
      getStarted: (e) async {
        emit(const UserWatcherState.loadInProgress());

        final failureOrUser = await _userRepository.get();

        add(UserWatcherEvent.userReceived(failureOrUser));
      },
      userReceived: (e) async {
        emit(e.failureOrUser.fold(
          (f) => UserWatcherState.loadFailure(f),
          (user) => UserWatcherState.loadSuccess(user),
        ));
      },
      get: (e) async {
        const UserWatcherState.inProgress();
        final possibleFailure = await _userRepository.get();
        emit(possibleFailure.fold(
          (f) => UserWatcherState.gettingUserFailure(f),
          (node) => UserWatcherState.gettingUserSuccess(node),
        ));
      },
    );
  }
}
