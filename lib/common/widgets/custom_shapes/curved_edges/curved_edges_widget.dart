import 'package:dravya/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class DCurvedEdgeWidget extends StatelessWidget {
  final Widget? child;
  const DCurvedEdgeWidget({this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: DCustomCurvedEdge(), child: child);
  }
}
