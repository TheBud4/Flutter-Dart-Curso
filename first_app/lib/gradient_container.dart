import 'package:flutter/material.dart';
import 'styled_text.dart';

class GradientContainer extends StatelessWidget {
  final Alignment alignmentBegin;
  final Alignment alignmentEnd;
  final List<Color> colors;

  const GradientContainer({
    required this.alignmentBegin,
    required this.alignmentEnd,
    super.key,
    this.colors = const [Colors.deepPurple, Colors.purpleAccent],
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: alignmentBegin,
          end: alignmentEnd,
        ),
      ),
      child: Center(
        child: StyledText(
          'Hello, World!',
          textSize: 36,
        ),
      ),
    );
  }
}
