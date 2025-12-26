import 'package:flutter/rendering.dart';
import 'package:graphview/GraphView.dart';

class LabeledEdgeRenderer extends EdgeRenderer {
  @override
  void render(Canvas canvas, Graph graph, Paint paint) {
    for (var edge in graph.edges) {
      final from = edge.source.position;
      final to = edge.destination.position;

      // Draw the edge line
      canvas.drawLine(from, to, paint);

      // Draw the edge label in the middle
      final middle = Offset((from.dx + to.dx) / 2, (from.dy + to.dy) / 2);

      final label = edge.label;

      final textSpan = TextSpan(
        text: label,
        style: const TextStyle(
          color: Color(0xFF000000),
          fontSize: 12,
        ),
      );
      final textPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
      );
      textPainter.layout();

      // Offset to center the text
      final offset =
          middle - Offset(textPainter.width / 2, textPainter.height / 2);
      textPainter.paint(canvas, offset);
    }
  }
}
