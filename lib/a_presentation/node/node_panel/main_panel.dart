import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/a_shared/ui_helpers.dart';
import 'package:asl/a_presentation/core/widgets/app_btn.dart';
import 'package:asl/a_presentation/core/widgets/icon_only_btn.dart';
import 'package:asl/a_presentation/node/node_card/app_node.dart';
import 'package:asl/a_presentation/node/node_panel/node_info_panel.dart';
import 'package:asl/a_presentation/node/node_panel/notes_panel.dart';
import 'package:asl/a_presentation/node/node_panel/parents_brothers_panel.dart';
import 'package:asl/a_presentation/node/node_panel/relations_panel.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/child_form/child_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/partner_form/partner_form_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPanel extends StatelessWidget {
  const MainPanel({
    super.key,
    required this.color,
    required this.type,
    required this.node,
    required this.hasImage,
  });

  final MaterialColor color;
  final NodeType type;
  final TNode node;
  final bool hasImage;

  bool showEditingIcon(NodeFormState state) {
    // if the panel is not eddditng, and not in the second tab, then show the icon
    return !state.isEditing && state.currentPanel != 1;
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('LOG | Node ${node.firstName.getOrCrash()} is opened');
    return MultiBlocListener(
      listeners: [
        BlocListener<NodeFormBloc, NodeFormState>(
          listener: (ctx, state) {
            state.saveFailureOrSuccessOption?.fold(
              (_) {},
              // send updated node to LocalTreeBloc
              (unit) => ctx
                  .read<LocalTreeBloc>()
                  .add(LocalTreeEvent.updateNode(node: unit)),
            );
          },
        ),
        BlocListener<PartnerFormBloc, PartnerFormState>(listener: (ctx, state) {
          state.addedFailureOrSuccessOption?.fold(
            (failure) {},
            (unit) {
              // send updated node to LocalTreeBloc
              ctx.read<LocalTreeBloc>().add(LocalTreeEvent.addPartners(
                    node: unit[0] as TNode,
                    partnersList: unit[1] as List<TNode>,
                    relationsList: unit[2] as List<Relation>,
                  ));
            },
          );

          state.deletedFailureOrSuccessOption?.fold(
            (failure) {},
            (relations) {
              // send updated node to LocalTreeBloc
              ctx.read<LocalTreeBloc>().add(LocalTreeEvent.deleteRelations(
                    relations: relations,
                  ));
            },
          );
        }),
        BlocListener<ChildFormBloc, ChildFormState>(listener: (ctx, state) {
          // send children nodes to LocalTreeBloc to add them
          state.addedFailureOrSuccessOption?.fold(
            (failure) {},
            (children) {
              ctx
                  .read<LocalTreeBloc>()
                  .add(LocalTreeEvent.addChildren(children: children));
            },
          );

          // send children nodes to LocalTreeBloc to delete them
          state.deletedFailureOrSuccessOption?.fold(
            (failure) {},
            (children) {
              // send updated node to LocalTreeBloc
              ctx
                  .read<LocalTreeBloc>()
                  .add(LocalTreeEvent.deleteChildren(children: children));
            },
          );
        }),
      ],
      child: Stack(
        alignment: Alignment.center,
        children: [
          AlertDialog(
            backgroundColor: color[700] ?? color,
            shape: kRoundedRectangleBorder,
            content: Container(
              alignment: Alignment.topRight,
              padding: const EdgeInsets.all(8.0),
              width: PAN_WIDTH,
              height: PAN_HEIGHT,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
              ),

              //  Make Tabs
              child: DefaultTabController(
                length: type != NodeType.partner ? 4 : 3,
                child: SizedBox(
                  width: PAN_WIDTH,
                  height: PAN_HEIGHT,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 35),
                          SizedBox(
                            width: PAN_WIDTH - 97,
                            height: 50,
                            child: TabBar(
                              unselectedLabelColor: kBlacksColor[600],
                              indicatorColor: kBlacksColor,
                              indicatorWeight: 2.5,
                              labelPadding:
                                  const EdgeInsets.symmetric(horizontal: 24.0),
                              padding: EdgeInsets.zero,
                              indicatorPadding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              labelColor: kBlacksColor,
                              labelStyle: kBodyMedium.copyWith(
                                  fontWeight: FontWeight.w900),
                              unselectedLabelStyle: kBodyMedium,
                              dividerColor: Colors.transparent,
                              indicatorSize: TabBarIndicatorSize.label,
                              dividerHeight: 0.0,
                              isScrollable: true,
                              tabs: [
                                Tab(text: getTr(context, 'personal_info')),
                                Tab(
                                    text:
                                        getTr(context, 'parents_and_siblings')),
                                if (type != NodeType.partner)
                                  Tab(
                                      text:
                                          '${getNodeRelationPanelTitle(context, node.gender)} ${getTr(context, 'and_children')!}'),
                                Tab(text: getTr(context, 'brief_and_notes')!),
                              ],
                              onTap: (index) {
                                context.read<NodeFormBloc>().add(
                                    NodeFormEvent.updateCurrentPanel(index));
                              },
                            ),
                          ),
                          const SizedBox(width: 18),
                          // Edit Button
                          BlocBuilder<NodeFormBloc, NodeFormState>(
                            builder: (context, state) {
                              return showEditingIcon(state)
                                  ? IconOnlyButton(
                                      onPressed: () => context
                                          .read<NodeFormBloc>()
                                          .add(NodeFormEvent.edited(
                                              !state.isEditing)),
                                      icon: const Icon(Icons.edit, size: 24.0),
                                    )
                                  : const SizedBox();
                            },
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: PAN_HEIGHT - 106,
                            width: PAN_WIDTH - 53,
                            margin: const EdgeInsets.only(right: 80),
                            child: TabBarView(
                              children: [
                                InfoPanel(color: color, contextDialog: context),
                                ParentsSiblingsPanel(
                                  personId: node.nodeId,
                                  treeId: node.treeId,
                                  store:
                                      context.read<LocalTreeBloc>().state.store,
                                  color: color,
                                ),
                                if (type != NodeType.partner)
                                  RelationsPanel(color: color, node: node),
                                NotesPanel(color: color),
                              ],
                            ),
                          ),
                          // Saving Button
                          BlocBuilder<NodeFormBloc, NodeFormState>(
                            builder: (context, state) {
                              return Container(
                                alignment: Alignment.bottomLeft,
                                width: PAN_WIDTH,
                                height: 40,
                                child: AppButton(
                                  onPressed: () {
                                    if (showEditingIcon(state)) {
                                      Navigator.pop(context);

                                      // Save all the added partner and children
                                      context
                                          .read<PartnerFormBloc>()
                                          .add(const PartnerFormEvent.saved());

                                      context
                                          .read<ChildFormBloc>()
                                          .add(const ChildFormEvent.saved());
                                    } else {
                                      context
                                          .read<NodeFormBloc>()
                                          .add(const NodeFormEvent.saved());
                                    }
                                  },
                                  label: showEditingIcon(state)
                                      ? getTr(context, 'done')!
                                      : getTr(context, 'save')!,
                                  fillColor: color,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Avatar Image
          BlocBuilder<NodeFormBloc, NodeFormState>(
            builder: (context, state) {
              final cNode = state.node != null ? state.node! : node;
              final imageWidget = getImageWidget(null, cNode.gender);
              return Container(
                width: 150,
                height: 150,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(6),
                margin:
                    const EdgeInsets.only(bottom: PAN_HEIGHT, left: PAN_WIDTH),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: kBlacksColor,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(14.0),
                  color: color[600] ?? color,
                ),
                child: imageWidget,
              );
            },
          ),
        ],
      ),
    );
  }
}
