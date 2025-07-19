part of graphview;

class TreeEdgeRenderer extends EdgeRenderer {
  BuchheimWalkerConfiguration configuration;

  TreeEdgeRenderer(this.configuration);

  var linePath = Path();

  @override
  void render(Canvas canvas, Graph graph, Paint paint) {
    var levelSeparationHalf = configuration.levelSeparation / 2;

    graph.nodes.forEach((node) {
      var children = graph.successorsOf(node);

      children.forEach((child) {
        var edge = graph.getEdgeBetween(node, child);
        var edgePaint = (edge?.paint ?? paint)..style = PaintingStyle.stroke;
        linePath.reset();
        switch (configuration.orientation) {
          case BuchheimWalkerConfiguration.ORIENTATION_TOP_BOTTOM:
            // position at the middle-top of the child
            linePath.moveTo((child.x + child.width / 2), child.y);
            // draws a line from the child's middle-top halfway up to its parent
            linePath.lineTo(
                child.x + child.width / 2, child.y - levelSeparationHalf);
            // draws a line from the previous point to the middle of the parents width
            linePath.lineTo(
                node.x + node.width / 2, child.y - levelSeparationHalf);

            // position at the middle of the level separation under the parent
            linePath.moveTo(
                node.x + node.width / 2, child.y - levelSeparationHalf);
            // draws a line up to the parents middle-bottom
            linePath.lineTo(node.x + node.width / 2, node.y + node.height);

            break;
          case BuchheimWalkerConfiguration.ORIENTATION_BOTTOM_TOP:
            linePath.moveTo(child.x + child.width / 2, child.y + child.height);
            linePath.lineTo(child.x + child.width / 2,
                child.y + child.height + levelSeparationHalf);
            linePath.lineTo(node.x + node.width / 2,
                child.y + child.height + levelSeparationHalf);

            linePath.moveTo(node.x + node.width / 2,
                child.y + child.height + levelSeparationHalf);
            linePath.lineTo(node.x + node.width / 2, node.y + node.height);

            break;
          case BuchheimWalkerConfiguration.ORIENTATION_LEFT_RIGHT:
            linePath.moveTo(child.x, child.y + child.height / 2);
            linePath.lineTo(
                child.x - levelSeparationHalf, child.y + child.height / 2);
            linePath.lineTo(
                child.x - levelSeparationHalf, node.y + node.height / 2);

            linePath.moveTo(
                child.x - levelSeparationHalf, node.y + node.height / 2);
            linePath.lineTo(node.x + node.width, node.y + node.height / 2);

            break;
          case BuchheimWalkerConfiguration.ORIENTATION_RIGHT_LEFT:
            linePath.moveTo(child.x + child.width, child.y + child.height / 2);
            linePath.lineTo(child.x + child.width + levelSeparationHalf,
                child.y + child.height / 2);
            linePath.lineTo(child.x + child.width + levelSeparationHalf,
                node.y + node.height / 2);

            linePath.moveTo(child.x + child.width + levelSeparationHalf,
                node.y + node.height / 2);
            linePath.lineTo(node.x + node.width, node.y + node.height / 2);
        }

        // Asl Edit: add label
        if (edge != null) {
          final label = edge.label ?? '';

          // Calculate midpoint of the vertical connector
          final labelX = node.x + node.width / 2;
          final labelY = (node.y + node.height + child.y) / 2;

          final textSpan = TextSpan(
            text: label,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: 'GHAITHSANS',
            ),
          );

          final textPainter = TextPainter(
            text: textSpan,
            textDirection: TextDirection.ltr,
          );
          textPainter.layout();

          final labelOffset = Offset(
            labelX - textPainter.width / 2,
            labelY - textPainter.height / 2,
          );

          final labelRect = Rect.fromCenter(
            center: Offset(
              labelX + 5 - textPainter.width / 4,
              labelY + 7 - textPainter.height / 2,
            ),
            width: textPainter.width + 50,
            height: textPainter.height + 30,
          );

          final rRect = RRect.fromRectAndRadius(labelRect, Radius.circular(6));

          // Draw the edges
          canvas.drawPath(linePath, edgePaint);

          // Draw the background
          canvas.drawRRect(
            rRect,
            Paint()..color = Colors.white,
          );

          // Draw the text
          textPainter.paint(canvas, labelOffset);
        } else {
          canvas.drawPath(linePath, edgePaint);
        }
      });
    });
  }
}
