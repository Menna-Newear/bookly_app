import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utilits/styles.dart';
import 'package:bookly_app/features/widgets/bookRating.dart';
import 'package:bookly_app/features/widgets/booksAction.dart';
import 'package:bookly_app/features/widgets/customBookDetailsAppBar.dart';
import 'package:bookly_app/features/widgets/customBookImage.dart';
import 'package:bookly_app/features/widgets/recommendedBooksListView.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .2),
                  child: CustomBookImage(
                    imageURL:
                        "data:image/jpeg;base64,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",
                  ),
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
                  count: 32,
                  average: 2,
                  position: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 37,
                ),
                const BooksAction(),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You can also like",
                    style: Styles.teststyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const RecoomendedBooksListView(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
