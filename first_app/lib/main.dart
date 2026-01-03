import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer.dark(),
        // Outra forma de usar o construtor
        //GradientContainer(
        //alignmentBegin: Alignment.topLeft,
        //alignmentEnd: Alignment.bottomRight,
        // colors: [
        //   Colors.purple,
        //   Colors.white,
        // ],
        //),
        // --------------
      ),
    );
  }
}
