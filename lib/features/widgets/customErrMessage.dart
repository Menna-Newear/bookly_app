import 'package:bookly_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';

class CustomErrWidget extends StatelessWidget {
  const CustomErrWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      style: Styles.teststyle20,
    );
  }
}
