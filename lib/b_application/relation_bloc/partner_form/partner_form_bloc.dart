import 'dart:async';

import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/i_node_repository.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/relation/i_relation_repository.dart';
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
  final IRelationRepository _relationRepository;
  final INodeRepository _nodeRepository;

  PartnerFormBloc(
    this._relationRepository,
    this._nodeRepository,
  ) : super(PartnerFormState.initial()) {
    on<PartnerFormEvent>(mapEventToState);
  }

  Future<void> mapEventToState(
    PartnerFormEvent event,
    Emitter<PartnerFormState> emit,
  ) async {
    await event.map(addPartner: (e) async {
      print('LOG | addPartner start');
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
        // Empty the state lists
        partnersList: [],
        relationsList: [],
        deletedPartners: {},
        showErrorMessages: AutovalidateMode.disabled,
      ));
      print('LOG | addPartner end');
    }, showPartnerByNodeId: (e) {
      emit(state.copyWith(isPartnerById: e.isAdding));
    }, addPartnerByNodeId: (e) async {
      // get the partner node, to make sure it exist
      emit(state.copyWith(gettingPartnerNodeByIdInProgress: true));
      final failureOrSuccess = await _nodeRepository.getNode(
          treeId: e.node.treeId,
          nodeId: UniqueId.fromUniqueString(e.partnerId));

      failureOrSuccess.fold((l) {
        // when the node id is not a valid id, show validation error
        emit(state.copyWith(
          gettingPartnerNodeByIdInProgress: false,
          showErrorMessages: AutovalidateMode.always,
          partnerNotExist: true,
        ));
      }, (r) {
        // if the id is valid, then create a relation and add the relation and the partner node to the list
        final partner = r;
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
          gettingPartnerNodeByIdInProgress: false,
          // Empty the state lists
          partnersList: [],
          relationsList: [],
          deletedPartners: {},
          partnerNotExist: false,
          showErrorMessages: AutovalidateMode.disabled,
        ));
        print('LOG | addPartnerById end');
      });
    }, edited: (e) {
      emit(state.copyWith(
        node: e.partner,
        isEditing: true,
        isAdding: false,
        isViewing: false,
      ));
    }, changeName: (e) {
      emit(state.copyWith(
        partner: state.partner.copyWith(
          firstName: FullName(e.name),
        ),
        saveFailureOrSuccessOption: none(),
        isAdding: false,
      ));
    }, changeMarriageDate: (e) {
      emit(state.copyWith(
        relation: state.relation!.copyWith(marriageDate: e.date),
        saveFailureOrSuccessOption: none(),
        isAdding: false,
      ));
    }, changeRelationEndDate: (e) {
      emit(state.copyWith(
        relation: state.relation!.copyWith(endDate: e.date),
        saveFailureOrSuccessOption: none(),
        isAdding: false,
      ));
    }, changeMarriageStatus: (e) {
      emit(state.copyWith(
        relation: state.relation!.copyWith(marriageStatus: e.status),
        saveFailureOrSuccessOption: none(),
        isAdding: false,
      ));
    }, addPartnertoList: (e) {
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
    }, saved: (e) async {
      print('LOG | add partners saved start');
      Either<RelationFailure, Unit>? failureOrSuccess;
      bool isCreated = false;

      print('LOG | add relation');

      if (state.partnersList.isNotEmpty) {
        // check the tree validation
        if (state.partnersList.every((p) => p.failureOption.isNone()) &&
            state.relationsList.every((r) => r.failureOption.isNone())) {
          failureOrSuccess =
              await _relationRepository.addRelationsListWithNewNodes(
            relationsList: state.relationsList,
            partnersList: state.partnersList,
            node: state.node!,
          );
          isCreated = state.isEditing ? false : true;
        }
      }

      if (state.deletedPartners.isNotEmpty) {
        for (var p in state.deletedPartners.entries) {
          final TNode partner = p.value['node'];
          final Relation relation = p.value['relation'];
          _relationRepository.deleteRelationAndChildren(
              partner: partner,
              treeId: relation.treeId,
              relation: relation,
              node: relation.mainNode!);
        }
      }
      emit(state.copyWith(
        isAdding: true,
        isCreated: isCreated,
        showErrorMessages: AutovalidateMode.always,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        node: TNode.empty(),
        partner: TNode.empty(),
        // Empty the state lists
        partnersList: [],
        relationsList: [],
        deletedPartners: {},
      ));
      print('LOG | add partners saved end');
    }, deleltPartner: (e) {
      print('LOG | delete partner');
      Map<String, Map<String, dynamic>> deleteList = {...state.deletedPartners};
      deleteList[e.partner.nodeId.getOrCrash()] = {
        'node': e.partner,
        'relation': e.relation
      };

      emit(state.copyWith(deletedPartners: deleteList));
    });
  }
}
