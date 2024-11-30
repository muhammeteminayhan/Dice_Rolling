import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll1 = 2;
  var currentDiceRoll2 = 4;

  void rollDice1() {
    setState(() {
      currentDiceRoll1 = randomizer.nextInt(6) + 1;
    });
  }

  void rollDice2() {
    setState(() {
      currentDiceRoll2 = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll1.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice1,
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(
              //   top: 20
              // ),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll Dice 1'),
        ),
        Image.asset(
          'assets/images/dice-$currentDiceRoll2.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice2,
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(
              //   top: 20
              // ),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll Dice 2'),
        )
      ],
    );
  }
}
