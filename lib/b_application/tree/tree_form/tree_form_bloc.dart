import 'dart:async';

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
    event.map(
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
      changeName: (e) async* {
        emit(state.copyWith(
          tree: state.tree.copyWith(treeName: TreeName(e.title)),
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
      },
      saved: (e) async {
        Either<TreeFailure, Unit>? failureOrSuccess;
        emit(state.copyWith(
          isSaving: true,
          isEditing: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        ));
        // check the tree validation
        if (state.tree.failureOption.isNone()) {
          // save the note, need instance
          failureOrSuccess = state.isEditing
              ? await _treeRepository.changeName(
                  treeId: state.tree.id, treeName: state.tree.treeName)
              : await _treeRepository.create(tree: state.tree);
        }

        // after the trying of update or create
        emit(state.copyWith(
          isViewing: true,
          isSaving: false,
          showErrorMessages: AutovalidateMode.always,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        ));
      },
    );
  }
}
