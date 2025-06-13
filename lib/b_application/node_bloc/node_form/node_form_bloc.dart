import 'dart:async';

import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/node/i_node_repository.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:asl/c_domain/node/value_objects.dart';
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
      initialized: (e) async {
        emit(state.copyWith(
          node: e.node,
          isViewing: true,
          hasNode: true,
          showErrorMessages: AutovalidateMode.disabled,
        ));
      },
      added: (e) async {
        emit(e.initialNodeOption.fold(
          () => state,
          (initialNode) => state.copyWith(
            node: initialNode,
            isAdding: true,
            isViewing: false,
            isEditing: -1,
            showErrorMessages: AutovalidateMode.disabled,
          ),
        ));
      },
      edited: (e) async {
        emit(state.copyWith(
          isEditing: e.isEditing,
          isViewing: false,
          isAdding: false,
          showErrorMessages: AutovalidateMode.disabled,
        ));
      },
      updateCurrentPanel: (e) async {
        emit(state.copyWith(
          currentPanel: e.panelIndex,
        ));
      },
      firstNameChanged: (e) async {
        emit(state.copyWith(
          node: state.node.copyWith(firstName: FirstName(e.title)),
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      birthDateChanged: (e) async {
        // print('birthDateChanged changed to ${e.date} ');
        emit(state.copyWith(
            node: state.node.copyWith(birthDate: e.date),
            // to get rid of any previous failure
            saveFailureOrSuccessOption: none()));
      },
      deathDateChanged: (e) async {
        emit(state.copyWith(
            node: state.node.copyWith(deathDate: e.date),
            // to get rid of any previous failure
            saveFailureOrSuccessOption: none()));
      },
      changeIsAvlive: (e) async {
        emit(state.copyWith(
          node: state.node.copyWith(isAlive: e.isAlive),
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      changeGender: (e) async {
        emit(state.copyWith(
          node: state.node.copyWith(gender: e.gender),
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      addPartner: (e) async {
        emit(state.copyWith(
          addPartner: e.isAdding,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      makeItRoot: (e) async {
        emit(state.copyWith(
          node: state.node.copyWith(isTreeRoot: true),
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      saved: (e) async {
        Either<TNodeFailure, Unit>? failureOrSuccess;
        emit(state.copyWith(
          isSaving: true,

          isAdding: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));

        // check the category validation
        if (state.node.failureOption.isNone()) {
          // save the purchase, need instance
          if (state.isEditing != -1) {
            failureOrSuccess = await _nodeRepository.update(
              treeId: state.node.treeId,
              node: state.node,
            );
          } else {
            failureOrSuccess = await _nodeRepository.create(
              treeId: state.node.treeId,
              node: state.node,
            );
          }
        }

        // after the trying of update or create
        emit(state.copyWith(
          // isViewing: true,
          isSaving: false,
          isEditing: -1,
          showErrorMessages: AutovalidateMode.always,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        ));
      },
      ended: (e) async {
        emit(state.copyWith(
          showErrorMessages: AutovalidateMode.disabled,
          isViewing: true,
          isEditing: -1,
        ));
      },
    );
  }
}
