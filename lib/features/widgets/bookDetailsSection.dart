import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utilits/styles.dart';
import 'package:bookly_app/features/widgets/bookRating.dart';
import 'package:bookly_app/features/widgets/booksAction.dart';
import 'package:bookly_app/features/widgets/customBookImage.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(),
        ),
        Text(
          "The Jungle Book ",
          style: Styles.teststyle30.copyWith(
            fontFamily: kGTSectraFine,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text("Rudyard Kipling ",
              style: Styles.titleMedium18.copyWith(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              )),
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRating(
          position: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
