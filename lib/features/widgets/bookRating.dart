import 'package:bookly_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.position = MainAxisAlignment.start,
      required this.average,
      required this.count});
  final MainAxisAlignment position;
  final int average;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: position,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          average.toString(),
          style: Styles.teststyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            "($count)",
            style: Styles.teststyle14,
          ),
        ),
      ],
    );
  }
}
