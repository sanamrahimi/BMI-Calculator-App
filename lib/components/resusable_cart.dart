import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color? color;
  final Widget? child;
  final VoidCallback? onPress;

  const ReusableCard({Key? key, this.color, this.child, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color ?? kActiveCardColor,
        ),
      ),
    );
  }
}
