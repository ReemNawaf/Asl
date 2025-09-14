import 'dart:async';

import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:asl/c_domain/relation/i_relation_repository.dart';
import 'package:asl/c_domain/tree/value_objects.dart';
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
      addChild: (e) {
        final child = TNode(
          treeId: e.treeId,
          nodeId: UniqueId(),
          firstName: FullName(''),
          isAlive: true,
          gender: Gender.male,
          upperFamily: e.relationId,
          relations: [],
          fosterChildren: [],
          relationsObject: [],
        );
        emit(state.copyWith(
          tempChild: child,
          isViewing: true,
          isAdding: false,
          children: {},
          showErrorMessages: AutovalidateMode.disabled,
        ));
      },
      addChildToList: (e) {
        if (state.tempChild.firstName.isValid()) {
          var newChildren = {...state.children};
          final relationKey = state.tempChild.upperFamily!.getOrCrash();

          newChildren[relationKey] = [
            ...?newChildren[relationKey],
            state.tempChild
          ];
          print('LOG | new children list ${newChildren.length}');
          emit(state.copyWith(
            children: newChildren,
            isViewing: true,
            isAdding: false,
            showErrorMessages: AutovalidateMode.always,
          ));
        } else {
          emit(state.copyWith(
            isViewing: true,
            isAdding: false,
            showErrorMessages: AutovalidateMode.always,
          ));
        }
      },
      edited: (e) {
        emit(state.copyWith(
          children: e.children,
          isEditing: true,
          isAdding: false,
          isViewing: false,
        ));
      },
      addParent: (e) {
        emit(state.copyWith(
          tempChild: state.tempChild.copyWith(upperFamily: e.upperFamily),
          saveFailureOrSuccessOption: none(),
          isAdding: false,
        ));
      },
      changeName: (e) {
        emit(state.copyWith(
          tempChild: state.tempChild.copyWith(firstName: FullName(e.name)),
          saveFailureOrSuccessOption: none(),
          isAdding: false,
        ));
      },
      changeBirthDate: (e) {
        emit(state.copyWith(
          tempChild: state.tempChild.copyWith(birthDate: e.date),
          saveFailureOrSuccessOption: none(),
          isAdding: false,
        ));
      },
      changeDeathDate: (e) {
        emit(state.copyWith(
          tempChild: state.tempChild.copyWith(deathDate: e.date),
          saveFailureOrSuccessOption: none(),
          isAdding: false,
        ));
      },
      changeIsAlive: (e) {
        emit(state.copyWith(
          tempChild: state.tempChild.copyWith(isAlive: e.isAlive),
          saveFailureOrSuccessOption: none(),
          isAdding: false,
        ));
      },
      changeGender: (e) {
        emit(state.copyWith(
          tempChild: state.tempChild.copyWith(gender: e.gender),
          saveFailureOrSuccessOption: none(),
          isAdding: false,
        ));
      },
      saved: (e) async {
        print('LOG | save child start');
        Either<TNodeFailure, Unit>? failureOrSuccess;
        bool isCreated = false;

        // convert children dict to list
        final List<TNode> allchildren =
            state.children.values.expand((list) => list).toList();

        if (allchildren.isNotEmpty) {
          print('LOG | all children length ${allchildren.length}');
          // check the tree validation
          if (allchildren.every((child) => child.failureOption.isNone())) {
            failureOrSuccess = await _relationRepository.addChildren(
              children: allchildren,
              treeId: allchildren.first.treeId,
            );
            print('LOG | the child is added');
            isCreated = state.isEditing ? false : true;
          }
        }

        emit(state.copyWith(
          isViewing: true,
          isSaving: false,
          isAdding: true,
          isCreated: isCreated,
          children: {},
          tempChild: TNode.empty(),
          showErrorMessages: AutovalidateMode.always,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        ));

        print('LOG | save child end');
      },
    );
  }
}
