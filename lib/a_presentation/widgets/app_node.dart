import 'package:flutter/material.dart';

class AppNode extends StatelessWidget {
  const AppNode({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('ff');
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(color: Colors.blue[100]!, spreadRadius: 1),
          ],
        ),
        child: const Text('dd--ddd'),
      ),
    );
  }
}

enum NodeType { root, son, ellipse, diamond, hexagon, outsider }
