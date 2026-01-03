import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Alignment alignmentBegin;
  final Alignment alignmentEnd;
  final List<Color> colors;
  // Construtor padrao
  const GradientContainer({
    required this.alignmentBegin,
    required this.alignmentEnd,
    super.key,
    this.colors = const [Colors.deepPurple, Colors.purpleAccent],
  });

  // Construtor nomeado
  const GradientContainer.purple({super.key})
    : alignmentBegin = Alignment.topLeft,
      alignmentEnd = Alignment.bottomRight,
      colors = const [Colors.deepPurple, Colors.indigo];

  const GradientContainer.dark({super.key})
    : alignmentBegin = Alignment.topCenter,
      alignmentEnd = Alignment.bottomCenter,
      colors = const [Color(0xFF171717), Color.fromARGB(255, 41, 41, 41)];

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
        child: DiceRoller(),
      ),
    );
  }
}
