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
          isSaving: false,
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
            isSaving: false,
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
          isSaving: false,
          showErrorMessages: AutovalidateMode.disabled,
        ));
      },
      updateCurrentPanel: (e) async {
        print('07 | current panel ${e.panelIndex}}');
        // Panel index is [0-3]
        emit(state.copyWith(
          currentPanel: e.panelIndex,
          isSaving: false,
        ));
      },
      firstNameChanged: (e) async {
        emit(state.copyWith(
          node: state.node.copyWith(firstName: FirstName(e.title)),
          isSaving: false,
          // to get rid of any previous failure
          showErrorMessages: AutovalidateMode.always,
          saveFailureOrSuccessOption: none(),
        ));
      },
      birthDateChanged: (e) async {
        // print('birthDateChanged changed to ${e.date} ');
        emit(state.copyWith(
            node: state.node.copyWith(birthDate: e.date),
            isSaving: false,
            // to get rid of any previous failure
            saveFailureOrSuccessOption: none()));
      },
      deathDateChanged: (e) async {
        emit(state.copyWith(
            node: state.node.copyWith(deathDate: e.date),
            isSaving: false,
            // to get rid of any previous failure
            saveFailureOrSuccessOption: none()));
      },
      changeIsAvlive: (e) async {
        print('07 | isAlive is selected');
        emit(state.copyWith(
          node: state.node.copyWith(isAlive: e.isAlive),
          isSaving: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
        print('07 | isAlive emit is done ${e.isAlive}');
      },
      changeGender: (e) async {
        emit(state.copyWith(
          node: state.node.copyWith(gender: e.gender),
          isSaving: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      addPartner: (e) async {
        emit(state.copyWith(
          addPartner: e.isAdding,
          isSaving: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      addChild: (e) async {
        emit(state.copyWith(
          addChild: e.isAdding,
          isSaving: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      makeItRoot: (e) async {
        emit(state.copyWith(
          node: state.node.copyWith(isTreeRoot: true),
          isSaving: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      saved: (e) async {
        print('07 | saved NodeFrom (first listen)');
        Either<TNodeFailure, Unit>? failureOrSuccess;
        emit(state.copyWith(
          isSaving: true,
          isAdding: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
          showErrorMessages: AutovalidateMode.always,
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
        print('07 | saved NodeFrom ??? (second listen)');
        emit(state.copyWith(
          // isViewing: true,
          isSaving: false,
          isEditing: -1,
          showErrorMessages: AutovalidateMode.always,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        ));
        print('07 | node is saved');
      },
      ended: (e) async {
        emit(state.copyWith(
          showErrorMessages: AutovalidateMode.disabled,
          isViewing: true,
          isSaving: false,
          isEditing: -1,
        ));
      },
    );
  }
}
