import 'dart:async';

import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/node/i_node_repository.dart';
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
  final INodeRepository _nodeRepository;

  NodeFormBloc(this._nodeRepository) : super(NodeFormState.initial()) {
    on<NodeFormEvent>(mapEventToState);
  }

  Future<void> mapEventToState(
    NodeFormEvent event,
    Emitter<NodeFormState> emit,
  ) async {
    await event.map(
      initialized: (e) {
        emit(state.copyWith(
          node: e.node,
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
            isEditing: -1,
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
          saveFailureOrSuccessOption: none(),
        ));
      },
      birthDateChanged: (e) {
        emit(state.copyWith(
            node: state.node!.copyWith(birthDate: e.date),
            isSaving: false,
            // to get rid of any previous failure
            saveFailureOrSuccessOption: none()));
      },
      deathDateChanged: (e) {
        emit(state.copyWith(
            node: state.node!.copyWith(deathDate: e.date),
            isSaving: false,
            // to get rid of any previous failure
            saveFailureOrSuccessOption: none()));
      },
      changeIsAvlive: (e) {
        emit(state.copyWith(
          node: state.node!.copyWith(isAlive: e.isAlive),
          isSaving: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      changeGender: (e) {
        emit(state.copyWith(
          node: state.node!.copyWith(gender: e.gender),
          isSaving: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      addPartner: (e) {
        emit(state.copyWith(
          addPartner: e.isAdding,
          isSaving: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      addChild: (e) {
        emit(state.copyWith(
          addChild: e.isAdding,
          isSaving: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      makeItRoot: (e) {
        emit(state.copyWith(
          node: state.node!.copyWith(isTreeRoot: true),
          isSaving: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      saved: (e) async {
        Either<TNodeFailure, Unit>? failureOrSuccess;
        emit(state.copyWith(
          isSaving: true,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
          showErrorMessages: AutovalidateMode.always,
        ));

        // check the node validation
        if (state.node!.failureOption.isNone()) {
          if (state.isEditing != -1) {
            failureOrSuccess = await _nodeRepository.update(
              treeId: state.node!.treeId,
              node: state.node!,
            );
          } else {
            failureOrSuccess = await _nodeRepository.create(
              treeId: state.node!.treeId,
              node: state.node!,
            );
          }
          // after the trying of update or create
          emit(state.copyWith(
            isSaving: false,
            isEditing: -1,
            showErrorMessages: AutovalidateMode.always,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess),
          ));
        }

        // after the trying of update or create
        emit(state.copyWith(
          isSaving: false,
          showErrorMessages: AutovalidateMode.always,
        ));
      },
      ended: (e) {
        emit(state.copyWith(
          showErrorMessages: AutovalidateMode.disabled,
          isSaving: false,
          isEditing: -1,
        ));
      },
    );
  }
}
