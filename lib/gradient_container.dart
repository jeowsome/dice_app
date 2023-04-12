import 'package:dice_app/dice_roller.dart';
import 'package:flutter/material.dart';

const Alignment startAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // constructor function
  // used when creating a class
  // function argument order
  // positional first - unnamed
  // named arguments {}
  const GradientContainer({
    super.key,
    required this.colorList,
  });

  // second constructor
  const GradientContainer.setToBW({super.key})
      : colorList = const [Colors.black, Colors.white];

  final List<Color> colorList;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorList,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
