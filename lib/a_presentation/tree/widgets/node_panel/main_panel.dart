import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/core/widgets/app_btn.dart';
import 'package:asl/a_presentation/core/widgets/icon_only_btn.dart';
import 'package:asl/a_presentation/tree/widgets/node_panel/node_info_panel.dart';
import 'package:asl/b_application/node/node_form/node_form_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart' as z;

class MainPanel extends StatelessWidget {
  const MainPanel({
    super.key,
    required this.color,
    required this.size,
    required this.imageWidget,
    required this.node,
  });

  final MaterialColor color;
  final Size size;
  final Widget imageWidget;
  final TNode node;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NodeFormBloc>(
      create: (context) => getIt<NodeFormBloc>()
        ..add(NodeFormEvent.initialized(z.optionOf(node))),
      child: Stack(
        alignment: Alignment.center,
        children: [
          AlertDialog(
            backgroundColor: color[700] ?? color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
              side: const BorderSide(
                color: kBlacksColor,
                width: 1.5,
              ),
            ),
            scrollable: true,
            content: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.all(8.0),
                  width: size.width * 0.6,
                  height: 420,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                  ),

                  //  Make Tabs
                  child: DefaultTabController(
                    length: 4,
                    child: Container(
                      width: size.width * 0.8,
                      height: 390,
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.only(right: size.width * 0.01),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: size.width * 0.54,
                                height: 50,
                                child: TabBar(
                                  unselectedLabelColor: kBlacksColor[600],
                                  indicatorColor: kBlacksColor,
                                  indicatorWeight: 2.5,
                                  labelPadding: const EdgeInsets.symmetric(
                                      horizontal: 25.0),
                                  padding: EdgeInsets.zero,
                                  indicatorPadding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
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
                                ),
                              ),
                              IconOnlyButton(
                                onPressed: () {},
                                icon: const Icon(Icons.edit, size: 24.0),
                              ),
                            ],
                          ),
                          Container(
                            width: size.width * 0.55,
                            height: 300,
                            padding: EdgeInsets.only(right: size.width * 0.05),
                            child: TabBarView(
                              children: [
                                InfoPanel(
                                    size: size, color: color, ctx: context),
                                const Icon(Icons.directions_transit),
                                const Icon(Icons.directions_bike),
                                const Icon(Icons.directions_bike),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 60,
                            height: 40,
                            child: AppButton(
                              onPressed: () {},
                              label: 'تم',
                              fillColor: color,
                            ),
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
            margin: EdgeInsets.only(
              bottom: size.height * 0.32,
              left: size.width * 0.62,
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
      ),
    );
  }
}
