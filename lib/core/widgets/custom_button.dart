import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonName, this.textStyle, this.buttonColor, this.borderRadius = BorderRadius.zero});

  final String buttonName;
  final TextStyle? textStyle;
  final Color? buttonColor;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
        textStyle: textStyle,
      ),
      child: Text(
        buttonName,
        style: textStyle,
      ),
    );
  }
}
