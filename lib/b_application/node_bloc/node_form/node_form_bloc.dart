import 'dart:async';

import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:asl/c_domain/tree/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'node_form_event.dart';
part 'node_form_state.dart';
part 'node_form_bloc.freezed.dart';

@injectable
class NodeFormBloc extends Bloc<NodeFormEvent, NodeFormState> {
  NodeFormBloc() : super(NodeFormState.initial()) {
    on<NodeFormEvent>(mapEventToState);
  }

  Future<void> mapEventToState(
    NodeFormEvent event,
    Emitter<NodeFormState> emit,
  ) async {
    await event.map(
      initialized: (e) {
        emit(state.copyWith(
          node: e.node.copyWith(notes: e.node.notes ?? NodeNotes('input')),
          isSaving: false,
          showErrorMessages: AutovalidateMode.disabled,
        ));
      },
      added: (e) {
        emit(e.initialNodeOption.fold(
          () => state,
          (initialNode) => state.copyWith(
            node: initialNode,
            isSaving: false,
            isEditing: false,
            showErrorMessages: AutovalidateMode.disabled,
          ),
        ));
      },
      edited: (e) {
        emit(state.copyWith(
          isEditing: e.isEditing,
          isSaving: false,
          showErrorMessages: AutovalidateMode.disabled,
        ));
      },
      updateCurrentPanel: (e) {
        // Panel index is [0-3]
        emit(state.copyWith(
          currentPanel: e.panelIndex,
          isSaving: false,
        ));
      },
      firstNameChanged: (e) {
        emit(state.copyWith(
            node: state.node!.copyWith(firstName: FullName(e.title)),
            isSaving: false,
            saveFailureOrSuccessOption: null));
      },
      birthDateChanged: (e) {
        emit(state.copyWith(
            node: state.node!.copyWith(birthDate: e.date),
            isSaving: false,
            // to get rid of any previous failure
            saveFailureOrSuccessOption: null));
      },
      deathDateChanged: (e) {
        emit(state.copyWith(
            node: state.node!.copyWith(deathDate: e.date),
            isSaving: false,
            // to get rid of any previous failure
            saveFailureOrSuccessOption: null));
      },
      changeIsAvlive: (e) {
        emit(state.copyWith(
          node: state.node!.copyWith(isAlive: e.isAlive),
          isSaving: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: null,
        ));
      },
      changeGender: (e) {
        emit(state.copyWith(
          node: state.node!.copyWith(gender: e.gender),
          isSaving: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: null,
        ));
      },
      changeIsUnknown: (e) {
        emit(state.copyWith(
          node: state.node!.copyWith(isUnknown: e.isUnknown),
          isSaving: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: null,
        ));
      },
      notesChanged: (e) {
        emit(state.copyWith(
          node: state.node!.copyWith(notes: NodeNotes(e.notes ?? '')),
          isSaving: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: null,
        ));
      },
      addPartner: (e) {
        emit(state.copyWith(
          addPartner: e.isAdding,
          isSaving: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: null,
        ));
      },
      addChild: (e) {
        emit(state.copyWith(
          addChild: e.isAdding,
          isSaving: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: null,
        ));
      },
      makeItRoot: (e) {
        emit(state.copyWith(
          node: state.node!.copyWith(isTreeRoot: true),
          isSaving: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: null,
        ));
      },
      saved: (e) async {
        Either<TNodeFailure, TNode>? failureOrSuccess;
        emit(state.copyWith(
          isSaving: true,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: null,
          showErrorMessages: AutovalidateMode.always,
        ));

        // check the node validation
        if (state.node!.failureOption.isNone()) {
          failureOrSuccess = right(state.node!);
          emit(state.copyWith(
            isSaving: false,
            isEditing: false,
            showErrorMessages: AutovalidateMode.always,
            saveFailureOrSuccessOption: failureOrSuccess,
          ));
        } else {
          emit(state.copyWith(
            isSaving: false,
            isEditing: true,
            showErrorMessages: AutovalidateMode.always,
            saveFailureOrSuccessOption: failureOrSuccess,
          ));
        }
      },
      ended: (e) {
        emit(state.copyWith(
          showErrorMessages: AutovalidateMode.disabled,
          isSaving: false,
          isEditing: false,
        ));
      },
    );
  }
}
