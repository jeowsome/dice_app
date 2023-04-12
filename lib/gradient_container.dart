import 'package:flutter/material.dart';
// import 'package:dice_app/styled_text.dart';

const Alignment startAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.colorList,
  });

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
      child: Center(
          child: Image.asset(
        'assets/images/dice-1.png',
        width: 200,
      )),
    );
  }
}
