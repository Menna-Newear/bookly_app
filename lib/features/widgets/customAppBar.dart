import 'package:bookly_app/core/utilits/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.iconImage});
  final Icon iconImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsConstant.logo,
            height: 25,
          ),
          IconButton(
            onPressed: () {},
            icon: iconImage,
            iconSize: 32,
          )
        ],
      ),
    );
  }
}
