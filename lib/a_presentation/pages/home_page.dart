import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/core/widgets/app_btn.dart';
import 'package:asl/a_presentation/pages/tree_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          Container(
            color: const Color(0xFFFFFAF5),
            width: size.width * 0.15,
            height: size.height,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 14.0),
            child: Column(
              children: [
                TextField(
                  decoration: kSearchBarInputDecor(),
                ),
                const Spacer(),
                const Column(
                  children: [],
                ),
                const Spacer(),
                AppButton(
                  onPressed: () {},
                  label: 'مشاركة',
                  fillColor: const Color(0xFFFFEFE2),
                  textColor: const Color(0xFF303030),
                  icon: Icons.ios_share,
                  hasIcon: true,
                ),
              ],
            ),
          ),
          SizedBox(width: size.width * 0.8, child: const TreeView()),
        ],
      ),
    );
  }
}
