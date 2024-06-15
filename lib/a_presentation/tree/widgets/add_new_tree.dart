import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/core/widgets/app_btn.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/tree/widgets/node_panel/info_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddNewTree extends StatelessWidget {
  const AddNewTree({super.key, required this.size});

  final Size size;
  @override
  Widget build(BuildContext context) {
    return AppButton(
      label: 'أنشئ شجرة عائلة',
      onPressed: () {
        showNewTreePanel(context, size);
        // final node = Node.Id(0);
        // graph.addNode(node);
        // setState(() {});
      },
      hasIcon: true,
      icon: SvgPicture.asset(
        'assets/icons/root.svg',
      ),
      fillColor: kRootColors[700]!,
      textColor: kRootColors[200]!,
    );
  }
}

void showNewTreePanel(
  BuildContext context,
  Size size,
) =>
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: kRootColors[700],
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
                width: size.width * 0.48,
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    kVSpacer10,
                    Container(
                      padding: const EdgeInsets.only(right: 28.0),
                      width: 300,
                      child: AppFormField(
                        label: 'اسم الشجرة',
                        hint: 'شجرة عائلة ...',
                        validator: (validate) => "",
                        onSaved: (_) {},
                        initialValue: '',
                      ),
                    ),
                    kVSpacer20,
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 42.0),
                      child: Divider(thickness: 1.4, color: kRootColors),
                    ),
                    kVSpacer20,
                    const Padding(
                      padding: EdgeInsets.only(right: 28.0),
                      child: Text('معلومات جذر العائلة', style: kBodyLarge),
                    ),
                    InfoPanel(
                      size: size,
                      color: kRootColors,
                      isRootPanel: true,
                      height: 0.18,
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
