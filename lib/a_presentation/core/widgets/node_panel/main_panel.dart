import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/core/widgets/node_panel/info_panel.dart';
import 'package:flutter/material.dart';

class MainPanel extends StatelessWidget {
  const MainPanel({
    super.key,
    required this.color,
    required this.size,
    required this.hasImage,
    required this.imageWidget,
  });

  final MaterialColor color;
  final Size size;
  final bool hasImage;
  final Widget imageWidget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AlertDialog(
          backgroundColor: color[700] ?? color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          scrollable: true,
          content: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                alignment: Alignment.topRight,
                padding: const EdgeInsets.all(8.0),
                width: size.width * 0.6,
                height: size.height * 0.58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                ),

                //  Make Tabs
                child: DefaultTabController(
                  length: 4,
                  child: Container(
                    width: size.width * 0.6,
                    height: size.height * 0.55,
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.only(right: size.width * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: size.width * 0.58,
                          height: size.height * 0.1,
                          child: TabBar(
                            unselectedLabelColor: kBlacksColor[600],
                            indicatorColor: kBlacksColor,
                            indicatorWeight: 2.5,
                            labelPadding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
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
                          ),
                        ),
                        Container(
                          width: size.width * 0.58,
                          height: size.height * 0.45,
                          padding: EdgeInsets.only(right: size.width * 0.07),
                          child: TabBarView(
                            children: [
                              InfoPanel(size: size, color: color),
                              const Icon(Icons.directions_transit),
                              const Icon(Icons.directions_bike),
                              const Icon(Icons.directions_bike),
                            ],
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
        hasImage
            ? Container(
                width: size.width * 0.15,
                height: size.width * 0.15,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(6),
                margin: EdgeInsets.only(
                  bottom: size.height * 0.62,
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
              )
            : const SizedBox(),
      ],
    );
  }
}
