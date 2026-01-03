import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  final double textSize;
  final Color textColor;

  const StyledText(
    this.text, {
    super.key,
    this.textSize = 24,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: textSize,
      ),
    );
  }
}
