import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/a_shared/ui_helpers.dart';
import 'package:asl/a_presentation/core/widgets/app_btn.dart';
import 'package:asl/a_presentation/core/widgets/icon_only_btn.dart';
import 'package:asl/a_presentation/node/node_panel/node_info_panel.dart';
import 'package:asl/a_presentation/node/node_panel/parents_brothers_panel.dart';
import 'package:asl/a_presentation/node/node_panel/relations_panel.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/child_form/child_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/partner_form/partner_form_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPanel extends StatelessWidget {
  const MainPanel({
    super.key,
    required this.color,
    required this.type,
    required this.imageWidget,
    required this.node,
    required this.hasImage,
  });

  final MaterialColor color;
  final NodeType type;
  final Widget imageWidget;
  final TNode node;
  final bool hasImage;

  bool showEditingIcon(NodeFormState state) {
    // if the panel is not eddditng, and not in the second tab, then show the icon
    return state.isEditing == -1 || state.isEditing == 1;
  }

  @override
  Widget build(BuildContext context) {
    print('LOG | Node ${node.firstName.getOrCrash()} is opened');
    return Stack(
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
                              const Tab(text: 'معلومات شخصية'),
                              const Tab(text: 'الوالدين والأخوة'),
                              if (type != NodeType.partner)
                                Tab(
                                    text:
                                        '${getNodeRelationPanelTitle(node.gender)} والأبناء'),
                              const Tab(text: 'نبذة وملاحظات'),
                            ],
                            onTap: (index) {
                              context
                                  .read<NodeFormBloc>()
                                  .add(NodeFormEvent.updateCurrentPanel(index));
                            },
                          ),
                        ),
                        const SizedBox(width: 18),
                        // edit Button
                        BlocBuilder<NodeFormBloc, NodeFormState>(
                          builder: (context, state) {
                            return (showEditingIcon(state))
                                ? IconOnlyButton(
                                    onPressed: () => context
                                        .read<NodeFormBloc>()
                                        .add(NodeFormEvent.edited(
                                            state.currentPanel)),
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
                              ParentsSiblingsPanel(color: color),
                              if (type != NodeType.partner)
                                RelationsPanel(color: color, node: node),
                              const SizedBox(),
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
                                    print('LOG | Saving everything');

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

                                    // context
                                    //     .read<NodeFormBloc>()
                                    //     .add(const NodeFormEvent.ended());
                                  }
                                },
                                label: (state.isEditing == -1 ||
                                        state.isEditing == 1)
                                    ? 'تم'
                                    : 'حفظ',
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
        Container(
          width: 150,
          height: 150,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(6),
          margin: const EdgeInsets.only(bottom: PAN_HEIGHT, left: PAN_WIDTH),
          decoration: BoxDecoration(
            border: Border.all(
              color: kBlacksColor,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(14.0),
            color: color[600] ?? color,
          ),
          child: hasImage
              ? imageWidget
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 85,
                      width: 85,
                      child: imageWidget,
                    ),
                    Text(
                      node.firstName.getOrCrash(),
                      style: kHeadlineMedium,
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}
