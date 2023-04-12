import 'package:flutter/material.dart';
import 'package:dice_app/styled_text.dart';
import 'dart:math';

// created once
// global final variable
final randomizer = Random();

// when dealing with StatefulWidgets you will work with 2 classes
// Manage in a special way by flutter

// widget class
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// this class is private denoted by "_",
// state class - can change
// used internally
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    // available only inside State classes
    // reexecutes build function of State class
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          child: const StyledText('Roll Dice'),
        )
      ],
    );
  }
}
