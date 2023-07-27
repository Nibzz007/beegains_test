import 'package:beegains_task/core/colors.dart';
import 'package:flutter/material.dart';
import '../../core/textstyle.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: kBlack,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )),
      onPressed: onPressed,
      child: Text(
        text,
        style: elevatedButtonStyle,
      ),
    );
  }
}
