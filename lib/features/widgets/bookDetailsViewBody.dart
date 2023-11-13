import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utilits/styles.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/widgets/bookRating.dart';
import 'package:bookly_app/features/widgets/booksAction.dart';
import 'package:bookly_app/features/widgets/customBookDetailsAppBar.dart';
import 'package:bookly_app/features/widgets/customBookImage.dart';
import 'package:bookly_app/features/widgets/recommendedBooksListView.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
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
                          bookModel.volumeInfo.imageLinks?.smallThumbnail ??
                              ""),
                ),
                Text(
                  bookModel.volumeInfo.title,
                  style: Styles.teststyle30.copyWith(
                    fontFamily: kGTSectraFine,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Opacity(
                  opacity: 0.7,
                  child: Text(bookModel.volumeInfo.authors![0],
                      style: Styles.titleMedium18.copyWith(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                      )),
                ),
                const SizedBox(
                  height: 16,
                ),
                BookRating(
                  count: bookModel.volumeInfo.ratingsCount ?? 0,
                  average: bookModel.volumeInfo.averageRating ?? 0,
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
