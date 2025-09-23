import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final Color color;
  const LoadingWidget({super.key, this.color = kRootColors});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(
            backgroundColor: color.withOpacity(0.5),
            color: color,
          ),
        ),
      ],
    );
  }
}
