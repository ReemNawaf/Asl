import 'dart:async';

import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/value_objects.dart';
import 'package:asl/c_domain/relation/i_relation_repository.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:asl/c_domain/relation/relation_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'partner_form_event.dart';
part 'partner_form_state.dart';
part 'partner_form_bloc.freezed.dart';

@injectable
class PartnerFormBloc extends Bloc<PartnerFormEvent, PartnerFormState> {
  final IRelationRepository _relationRepository;

  PartnerFormBloc(this._relationRepository)
      : super(PartnerFormState.initial()) {
    on<PartnerFormEvent>(mapEventToState);
  }

  Future<void> mapEventToState(
    PartnerFormEvent event,
    Emitter<PartnerFormState> emit,
  ) async {
    await event.map(
      addPartner: (e) async {
        print('addPartner start');
        final isFather = e.node.gender == Gender.male;

        final partner = TNode(
          treeId: e.node.treeId,
          nodeId: UniqueId(),
          firstName: FirstName(''),
          isAlive: true,
          gender: isFather ? Gender.female : Gender.male,
          upperFamily: UniqueId(),
          relations: [],
          fosterChildren: [],
          relationsObject: [],
        );
        final father = isFather ? e.node.nodeId : partner.nodeId;
        final mother = isFather ? partner.nodeId : e.node.nodeId;

        // Add Relation
        final relation = Relation(
          treeId: e.node.treeId,
          partnerTreeId: partner.treeId,
          relationId: UniqueId(),
          marriageStatus: MarriageStatus.married,
          father: father,
          mother: mother,
          children: [],
          childrenNodes: [],
        );
        emit(state.copyWith(
          relation: relation,
          partner: partner,
          node: e.node,
          // isViewing: true,
          isEditing: false,
          isAdding: true,
          showErrorMessages: AutovalidateMode.disabled,
        ));
        print('addPartner end');
      },
      edited: (e) async {
        emit(state.copyWith(
          node: e.partner,
          isEditing: true,
          isViewing: false,
        ));
      },
      changeName: (e) async {
        emit(state.copyWith(
          partner: state.partner.copyWith(
            firstName: FirstName(e.name),
          ),
          saveFailureOrSuccessOption: none(),
        ));
      },
      changeMarriageDate: (e) async {
        emit(state.copyWith(
          relation: state.relation!.copyWith(marriageDate: e.date),
          saveFailureOrSuccessOption: none(),
        ));
      },
      changeRelationEndDate: (e) async {
        emit(state.copyWith(
          relation: state.relation!.copyWith(endDate: e.date),
          saveFailureOrSuccessOption: none(),
        ));
      },
      changeMarriageStatus: (e) async {
        emit(state.copyWith(
          relation: state.relation!.copyWith(marriageStatus: e.status),
          saveFailureOrSuccessOption: none(),
        ));
      },
      addPartnertoList: (e) {
        if (state.partner.firstName.isValid()) {
          final newPartners = [...state.partnersList, state.partner];

          final newRelations = [
            ...state.relationsList,
            state.relation!.copyWith(partnerNode: state.partner)
          ];

          emit(state.copyWith(
            partnersList: newPartners,
            relationsList: newRelations,
            isViewing: true,
            isAdding: true,
            showErrorMessages: AutovalidateMode.always,
          ));
        }
      },
      saved: (e) async {
        print('04 | saved start');
        Either<RelationFailure, Unit>? failureOrSuccess;
        bool isCreated = false;

        emit(state.copyWith(
          isSaving: true,
          isEditing: false,
          saveFailureOrSuccessOption: none(),
        ));

        print('04 | add relation');

        if (state.partnersList.isNotEmpty) {
          // check the tree validation
          if (state.partnersList.every((p) => p.failureOption.isNone()) &&
              state.relationsList.every((r) => r.failureOption.isNone())) {
            failureOrSuccess =
                // state.isEditing
                //     ? await _relationRepository.update(
                //      partner: state.partner, relation: state.relation!) :

                await _relationRepository.addRelationsListWithNewNodes(
              relationsList: state.relationsList,
              partnersList: state.partnersList,
              node: state.node!,
            );
            isCreated = state.isEditing ? false : true;
          }
        }

        emit(state.copyWith(
          isViewing: true,
          isSaving: false,
          isAdding: false,
          isCreated: isCreated,
          showErrorMessages: AutovalidateMode.always,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        ));
        print('04 | saved end');
      },
    );
  }
}
