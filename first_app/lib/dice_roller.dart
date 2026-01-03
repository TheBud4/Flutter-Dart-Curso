import 'dart:math';
import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

// Variavel final global para o randomizador,
// assim nao é recriada toda vez que o dado é rolado
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/dice-$currentDiceRoll.png', width: 200),

        // Outra forma de adicionar espacamento
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // espacamento entre o texto e a borda do botao
            //padding: const EdgeInsets.only(
            // top: 20,
            //),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const StyledText(
            'Roll Dice',
            textSize: 28,
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
