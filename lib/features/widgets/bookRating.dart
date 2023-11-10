import 'package:bookly_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.position = MainAxisAlignment.start});
  final MainAxisAlignment position;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: position,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          "4.8",
          style: Styles.teststyle16,
        ),
        SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            "(2390)",
            style: Styles.teststyle14,
          ),
        ),
      ],
    );
  }
}
