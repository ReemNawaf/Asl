import 'dart:async';

import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:asl/c_domain/relation/relation_failure.dart';
import 'package:asl/c_domain/tree/value_objects.dart';
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
  PartnerFormBloc() : super(PartnerFormState.initial()) {
    on<PartnerFormEvent>(mapEventToState);
  }

  Future<void> mapEventToState(
    PartnerFormEvent event,
    Emitter<PartnerFormState> emit,
  ) async {
    await event.map(
      addPartner: (e) async {
        final isFather = e.node.gender == Gender.male;

        final partner = TNode(
          treeId: e.node.treeId,
          nodeId: UniqueId(),
          firstName: FullName(''),
          isAlive: true,
          gender: isFather ? Gender.female : Gender.male,
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
          isEditing: false,
          isAdding: false,
          showErrorMessages: AutovalidateMode.disabled,
        ));
      },
      showPartnerByNodeId: (e) {
        emit(state.copyWith(isPartnerById: e.isAdding));
      },
      addPartnerByNodeId: (e) async {
        final partner = e.partner;

        if (partner != null) {
          // if the id is valid, then create a relation and add the relation and the partner node to the list
          final isFather = e.node.gender == Gender.male;

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
            isEditing: false,
            isAdding: false,
            // Empty the state lists
            partnersList: [],
            relationsList: [],
            deletedPartners: [],
            partnerNotExist: false,
            showErrorMessages: AutovalidateMode.disabled,
          ));
        } else {
          emit(state.copyWith(
            partnerNotExist: true,
            showErrorMessages: AutovalidateMode.disabled,
          ));
        }
      },
      edited: (e) {
        emit(state.copyWith(
          node: e.partner,
          isEditing: true,
          isAdding: false,
          isViewing: false,
        ));
      },
      changeName: (e) {
        emit(state.copyWith(
          partner: state.partner.copyWith(
            firstName: FullName(e.name),
          ),
          addedFailureOrSuccessOption: null,
          isAdding: false,
        ));
      },
      changeMarriageDate: (e) {
        emit(state.copyWith(
          relation: state.relation!.copyWith(marriageDate: e.date),
          addedFailureOrSuccessOption: null,
          isAdding: false,
        ));
      },
      changeRelationEndDate: (e) {
        emit(state.copyWith(
          relation: state.relation!.copyWith(endDate: e.date),
          addedFailureOrSuccessOption: null,
          isAdding: false,
        ));
      },
      changeMarriageStatus: (e) {
        emit(state.copyWith(
          relation: state.relation!.copyWith(marriageStatus: e.status),
          addedFailureOrSuccessOption: null,
          isAdding: false,
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
      saved: (e) async {
        Either<RelationFailure, List<Object>>? addedFailureOrSuccess;
        Either<RelationFailure, List<Relation>>? deletedFailureOrSuccess;
        bool isCreated = false;

        if (state.partnersList.isNotEmpty) {
          // check the tree validation
          if (state.partnersList.every((p) => p.failureOption.isNone()) &&
              state.relationsList.every((r) => r.failureOption.isNone())) {
            addedFailureOrSuccess = right([
              state.node!,
              state.partnersList,
              state.relationsList,
            ]);
            isCreated = state.isEditing ? false : true;
          }
        }

        if (state.deletedPartners.isNotEmpty) {
          deletedFailureOrSuccess = right(state.deletedPartners);
        }

        emit(state.copyWith(
          isAdding: true,
          isCreated: isCreated,
          node: TNode.empty(),
          partner: TNode.empty(),
          // Empty the state lists
          partnersList: [],
          relationsList: [],
          deletedPartners: [],

          showErrorMessages: AutovalidateMode.always,
          addedFailureOrSuccessOption: addedFailureOrSuccess,
          deletedFailureOrSuccessOption: deletedFailureOrSuccess,
        ));
      },
      deleltPartner: (e) {
        List<Relation> deleteList = [...state.deletedPartners, e.relation];
        emit(state.copyWith(deletedPartners: deleteList));
      },
    );
  }
}
