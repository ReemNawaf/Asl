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
      addChild: (e) {
        final child = TNode(
          treeId: e.treeId,
          nodeId: UniqueId(),
          firstName: FirstName(''),
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
          isAdding: true,
          showErrorMessages: AutovalidateMode.disabled,
        ));
      },
      addChildToList: (e) {
        var newChildren = {...state.children};
        final relationKey = state.tempChild.upperFamily.getOrCrash();

        newChildren[relationKey] = [
          ...?newChildren[relationKey],
          state.tempChild
        ];
        print('New children list ${newChildren.length}');
        emit(state.copyWith(
          children: newChildren,
          isViewing: true,
          isAdding: true,
          showErrorMessages: AutovalidateMode.always,
        ));
      },
      edited: (e) async {
        emit(state.copyWith(
          children: e.children,
          isEditing: true,
          isViewing: false,
        ));
      },
      addParent: (e) {
        emit(state.copyWith(
          tempChild: state.tempChild.copyWith(upperFamily: e.upperFamily),
          saveFailureOrSuccessOption: none(),
        ));
      },
      changeName: (e) {
        emit(state.copyWith(
          tempChild:
              state.tempChild.copyWith(firstName: FirstName.fromString(e.name)),
          saveFailureOrSuccessOption: none(),
        ));
      },
      changeBirthDate: (e) {
        emit(state.copyWith(
          tempChild: state.tempChild.copyWith(birthDate: e.date),
          saveFailureOrSuccessOption: none(),
        ));
      },
      changeDeathDate: (e) async {
        emit(state.copyWith(
          tempChild: state.tempChild.copyWith(deathDate: e.date),
          saveFailureOrSuccessOption: none(),
        ));
      },
      changeIsAlive: (e) async {
        emit(state.copyWith(
          tempChild: state.tempChild.copyWith(isAlive: e.isAlive),
          saveFailureOrSuccessOption: none(),
        ));
      },
      changeGender: (e) async {
        emit(state.copyWith(
          tempChild: state.tempChild.copyWith(gender: e.gender),
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

        // convert children dict to list
        final List<TNode> allchildren =
            state.children.values.expand((list) => list).toList();

        if (allchildren.isNotEmpty) {
          print('All children length ${allchildren.length}');
          // check the tree validation
          if (allchildren.every((child) => child.failureOption.isNone())) {
            failureOrSuccess =
                // state.isEditing
                //     ? await _relationRepository.update(
                //         child: state.child,
                //         treeId: state.child.treeId,
                //       ):
                await _relationRepository.addChildren(
              children: allchildren,
              treeId: allchildren.first.treeId,
            );
            print('31 | the child is added');
            isCreated = state.isEditing ? false : true;
          }
        }

        print('31 | emitting ${optionOf(failureOrSuccess)}');
        print('31 | emitting ${optionOf(failureOrSuccess).isSome()}');

        emit(state.copyWith(
          isViewing: true,
          isSaving: false,
          isAdding: false,
          isCreated: isCreated,
          children: {},
          tempChild: TNode.empty(),
          showErrorMessages: AutovalidateMode.always,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        ));
        print(
            '31 | when did this thing happen!!! ${optionOf(failureOrSuccess).isSome()}');
      },
    );
  }
}
