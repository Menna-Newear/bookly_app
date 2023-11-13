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
                  child: const CustomBookImage(
                      imageURL:
                          "https://foulabook.com/storage/photo/97883.2018-02-03.1517682381.png"),
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
