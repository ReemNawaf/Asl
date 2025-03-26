import 'dart:async';

import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/value_objects.dart';
import 'package:asl/c_domain/relation/i_relation_repository.dart';
import 'package:asl/c_domain/relation/relation_failure.dart';
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
        emit(state.copyWith(
          node: e.node,
          isViewing: true,
          showErrorMessages: AutovalidateMode.disabled,
        ));
      },
      addChild: (e) async {
        emit(state.copyWith(
          relationId: e.relationId,
          child: state.child.copyWith(
            firstName: FirstName(e.name),
            treeId: state.node.treeId,
            isAlive: true,
            gender: e.gender,
          ),
          saveFailureOrSuccessOption: none(),
          isAdding: true,
          isViewing: false,
        ));
      },
      saved: (e) async {
        Either<RelationFailure, Unit>? failureOrSuccess;
        emit(state.copyWith(
          isSaving: true,
          isAdding: false,
          saveFailureOrSuccessOption: none(),
        ));

        if (state.node.failureOption.isNone()) {
          failureOrSuccess = await _relationRepository.addChild(
            child: state.child,
            treeId: state.node.treeId,
            relationId: state.relationId,
          );
        }

        // after the trying of update or create
        emit(state.copyWith(
          isSaving: false,
          isViewing: true,
          showErrorMessages: AutovalidateMode.always,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        ));
      },
    );
  }
}
