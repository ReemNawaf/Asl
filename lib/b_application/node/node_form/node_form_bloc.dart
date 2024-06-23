import 'dart:async';

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
        emit(e.initialNodeOption.fold(
          () => state,
          (initialNode) => state.copyWith(
            node: initialNode,
            isViewing: true,
            showErrorMessages: AutovalidateMode.disabled,
          ),
        ));
      },
      added: (e) async {
        emit(e.initialNodeOption.fold(
          () => state,
          (initialNode) => state.copyWith(
            node: initialNode,
            isAdding: true,
            isViewing: false,
            isEditing: false,
            showErrorMessages: AutovalidateMode.disabled,
          ),
        ));
      },
      edited: (e) async {
        emit(e.existingNodeOption.fold(
          () => state,
          (existingNode) => state.copyWith(
            node: existingNode,
            isEditing: true,
            isViewing: false,
            isAdding: false,
          ),
        ));
      },
      firstNameChanged: (e) async {
        emit(state.copyWith(
          node: state.node.copyWith(firstName: FirstName(e.title)),
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      dateChanged: (e) async {
        emit(state.copyWith(
            node: state.node.copyWith(birthDate: e.date),
            // to get rid of any previous failure
            saveFailureOrSuccessOption: none()));
      },
      saved: (e) async {
        Either<TNodeFailure, Unit>? failureOrSuccess;
        emit(state.copyWith(
          isSaving: true,
          isEditing: false,
          isAdding: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
        // check the category validation
        if (state.node.failureOption.isNone()) {
          // save the purchase, need instance
          if (state.isEditing) {
            if (state.isMoving) {
              failureOrSuccess = await _nodeRepository.create(
                treeId: state.node.treeId.getOrCrash(),
                node: state.node,
              );

              failureOrSuccess = await _nodeRepository.delete(
                treeId: state.node.treeId.getOrCrash(),
                node: state.node,
              );
            } else {
              // update purchase
              failureOrSuccess = await _nodeRepository.update(
                treeId: state.node.treeId.getOrCrash(),
                node: state.node,
              );
            }
          } else {
            failureOrSuccess = await _nodeRepository.create(
              // Watcher category
              treeId: state.node.treeId.getOrCrash(),
              node: state.node,
            );
          }
        }

        // after the trying of update or create
        emit(state.copyWith(
          // isViewing: true,
          isSaving: false,
          isMoving: false,
          showErrorMessages: AutovalidateMode.always,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        ));
      },
      ended: (e) async {
        emit(e.initialNodeOption.fold(
          () => state,
          (initialNode) {
            return state.copyWith(
              node: initialNode,
              showErrorMessages: AutovalidateMode.disabled,
              isViewing: true,
            );
          },
        ));
      },
    );
  }
}
