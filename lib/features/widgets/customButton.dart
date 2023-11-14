import 'package:bookly_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.borderRadius,
      required this.textColor,
      required this.buttonText,
      this.fontSize,
      this.onpressed});
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final Color textColor;
  final String buttonText;
  final double? fontSize;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onpressed,
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            )),
        child: Text(
          buttonText,
          style: Styles.teststyle20.copyWith(
            fontWeight: FontWeight.w900,
            color: textColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
