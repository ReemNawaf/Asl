import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/core/widgets/app_btn.dart';
import 'package:asl/a_presentation/core/widgets/icon_only_btn.dart';
import 'package:asl/a_presentation/node/node_panel/node_info_panel.dart';
import 'package:asl/a_presentation/node/node_panel/parents_brothers_panel.dart';
import 'package:asl/a_presentation/node/node_panel/relations_panel.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPanel extends StatelessWidget {
  const MainPanel({
    super.key,
    required this.color,
    required this.imageWidget,
    required this.node,
    required this.contextPage,
  });

  final MaterialColor color;
  final Widget imageWidget;
  final TNode node;
  final BuildContext contextPage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AlertDialog(
          backgroundColor: color[700] ?? color,
          shape: kRoundedRectangleBorder,
          scrollable: true,
          content: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                alignment: Alignment.topRight,
                padding: const EdgeInsets.all(8.0),
                width: PAN_WIDTH,
                height: PAN_HEIGHT,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                ),

                //  Make Tabs
                child: DefaultTabController(
                  length: 4,
                  child: SizedBox(
                    width: PAN_WIDTH - 16,
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
                                labelPadding: const EdgeInsets.symmetric(
                                    horizontal: 24.0),
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
                                tabs: const [
                                  Tab(text: 'معلومات شخصية'),
                                  Tab(text: 'الوالدين والأخوة'),
                                  Tab(text: 'الزوجة والأبناء'),
                                  Tab(text: 'نبذة وملاحظات'),
                                ],
                                onTap: (index) {
                                  context.read<NodeFormBloc>().add(
                                      NodeFormEvent.updateCurrentPanel(index));
                                },
                              ),
                            ),
                            const SizedBox(width: 18),
                            BlocBuilder<NodeFormBloc, NodeFormState>(
                              builder: (context, state) {
                                return (state.isEditing == -1 &&
                                        state.currentPanel != 1)
                                    ? IconOnlyButton(
                                        onPressed: () => context
                                            .read<NodeFormBloc>()
                                            .add(NodeFormEvent.edited(
                                                state.currentPanel)),
                                        icon:
                                            const Icon(Icons.edit, size: 24.0),
                                      )
                                    : const SizedBox();
                              },
                            ),
                          ],
                        ),
                        Container(
                          height: PAN_HEIGHT - 106,
                          width: PAN_WIDTH - 53,
                          margin: const EdgeInsets.only(right: 80),
                          child: TabBarView(
                            children: [
                              InfoPanel(color: color, ctx: context),
                              ParentsSiblingsPanel(color: color),
                              RelationsPanel(color: color, node: node),
                              const Icon(Icons.directions_bike),
                            ],
                          ),
                        ),
                        BlocBuilder<NodeFormBloc, NodeFormState>(
                          builder: (context, state) {
                            return SizedBox(
                              width: 60,
                              height: 40,
                              child: AppButton(
                                onPressed: () {
                                  if (state.isEditing == -1 ||
                                      state.isEditing == 1) {
                                    Navigator.pop(context);
                                  } else {
                                    context
                                        .read<NodeFormBloc>()
                                        .add(const NodeFormEvent.saved());

                                    context
                                        .read<NodeFormBloc>()
                                        .add(const NodeFormEvent.ended());
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
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 150,
          height: 150,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(6),
          margin: const EdgeInsets.only(
            bottom: 420,
            left: 680,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: kBlacksColor,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(14.0),
            color: color[600] ?? color,
          ),
          child: imageWidget,
        ),
      ],
    );
  }
}
