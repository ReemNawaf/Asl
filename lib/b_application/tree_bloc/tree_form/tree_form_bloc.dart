import 'dart:async';

import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/value_objects.dart';
import 'package:asl/c_domain/tree/i_tree_repository.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:asl/c_domain/tree/tree_failure.dart';
import 'package:asl/c_domain/tree/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tree_form_event.dart';
part 'tree_form_state.dart';
part 'tree_form_bloc.freezed.dart';

@injectable
class TreeFormBloc extends Bloc<TreeFormEvent, TreeFormState> {
  final ITreeRepository _treeRepository;

  TreeFormBloc(this._treeRepository) : super(TreeFormState.initial()) {
    on<TreeFormEvent>(mapEventToState);
  }

  Future<void> mapEventToState(
    TreeFormEvent event,
    Emitter<TreeFormState> emit,
  ) async {
    await event.map(
      initialized: (e) async {
        emit(e.initialTreeOption.fold(
          () => state,
          (initialTree) => state.copyWith(
            tree: initialTree,
            isViewing: true,
          ),
        ));
      },
      edited: (e) async {
        emit(e.existingTreeOption.fold(
          () => state,
          (existingTree) => state.copyWith(
            tree: existingTree,
            isEditing: true,
            isViewing: false,
          ),
        ));
      },
      changeTreeName: (e) async {
        emit(state.copyWith(
          tree: state.tree.copyWith(treeName: TreeName(e.treeName)),
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      changeRootName: (e) async {
        emit(state.copyWith(
          tree: state.tree.copyWith(fullName: FullName(e.rootName)),
          root:
              state.root.copyWith(firstName: FirstName.fromString(e.rootName)),
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      changeRootBirthDate: (e) async {
        emit(state.copyWith(
          root: state.root.copyWith(birthDate: e.birthdate),
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      changeRootDeathDate: (e) async {
        emit(state.copyWith(
          root: state.root.copyWith(deathDate: e.deathdate),
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      changeRootIsAvlive: (e) async {
        emit(state.copyWith(
          root: state.root.copyWith(isAlive: e.isAlive),
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      changeRootGender: (e) async {
        emit(state.copyWith(
          root: state.root.copyWith(gender: e.gender),
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      saved: (e) async {
        Either<TreeFailure, Unit>? failureOrSuccess;
        bool isCreated = false;

        emit(state.copyWith(
          isSaving: true,
          isEditing: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
        // check the tree validation

        if (state.tree.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _treeRepository.update(state.tree)
              : await _treeRepository.create(
                  tree: state.tree, root: state.root);
          isCreated = state.isEditing ? false : true;
        }

        emit(state.copyWith(
          isViewing: true,
          isSaving: false,
          isCreated: isCreated,
          showErrorMessages: AutovalidateMode.always,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        ));
      },
    );
  }
}
