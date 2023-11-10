import 'package:bookly_app/features/widgets/customButtom.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: CustomButton(
          backgroundColor: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
          textColor: Colors.black,
          buttonText: "19.99€",
        )),
        Expanded(
            child: CustomButton(
          backgroundColor: Color(0xffEF8262),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          textColor: Colors.white,
          buttonText: "Free preview",
        )),
      ],
    );
  }
}