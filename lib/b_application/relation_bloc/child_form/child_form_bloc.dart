import 'dart:async';

import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:asl/c_domain/node/value_objects.dart';
import 'package:asl/c_domain/relation/i_relation_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'child_form_event.dart';
part 'child_form_state.dart';
part 'child_form_bloc.freezed.dart';

@injectable
class ChildFormBloc extends Bloc<ChildFormEvent, ChildFormState> {
  final IRelationRepository _relationRepository;

  ChildFormBloc(this._relationRepository) : super(ChildFormState.initial()) {
    on<ChildFormEvent>(mapEventToState);
  }

  Future<void> mapEventToState(
    ChildFormEvent event,
    Emitter<ChildFormState> emit,
  ) async {
    await event.map(
      initialized: (e) async {
        final child = TNode(
          treeId: e.treeId,
          nodeId: UniqueId(),
          firstName: FirstName(''),
          isAlive: true,
          gender: Gender.male,
          upperFamily: e.upperFamily,
          relations: [],
          fosterChildren: [],
          relationsObject: [],
        );

        emit(state.copyWith(
          child: child,
          isViewing: true,
          isAdding: true,
          showErrorMessages: AutovalidateMode.disabled,
        ));
      },
      edited: (e) async {
        emit(state.copyWith(
          child: e.child,
          isEditing: true,
          isViewing: false,
        ));
      },
      changeName: (e) async {
        emit(state.copyWith(
          child: state.child.copyWith(
            firstName: FirstName(e.name),
          ),
          saveFailureOrSuccessOption: none(),
        ));
      },
      changeBirthDate: (e) async {
        emit(state.copyWith(
          child: state.child.copyWith(birthDate: e.date),
          saveFailureOrSuccessOption: none(),
        ));
      },
      changeDeathDate: (e) async {
        emit(state.copyWith(
          child: state.child.copyWith(deathDate: e.date),
          saveFailureOrSuccessOption: none(),
        ));
      },
      changeIsAlive: (e) async {
        emit(state.copyWith(
          child: state.child.copyWith(isAlive: e.isAlive),
          saveFailureOrSuccessOption: none(),
        ));
      },
      changeGender: (e) async {
        emit(state.copyWith(
          child: state.child.copyWith(gender: e.gender),
          saveFailureOrSuccessOption: none(),
        ));
      },
      saved: (e) async {
        Either<TNodeFailure, Unit>? failureOrSuccess;
        bool isCreated = false;

        emit(state.copyWith(
          isSaving: true,
          isEditing: false,
          saveFailureOrSuccessOption: none(),
        ));

        // check the tree validation
        if (state.child.failureOption.isNone() &&
            state.child.failureOption.isNone()) {
          failureOrSuccess =
              // state.isEditing
              //     ? await _relationRepository.update(
              //         child: state.child,
              //         treeId: state.child.treeId,
              //       ):
              await _relationRepository.addChild(
            child: state.child,
            treeId: state.child.treeId,
          );
          isCreated = state.isEditing ? false : true;
        }

        emit(state.copyWith(
          isViewing: true,
          isSaving: false,
          isAdding: false,
          isCreated: isCreated,
          showErrorMessages: AutovalidateMode.always,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        ));
      },
    );
  }
}
