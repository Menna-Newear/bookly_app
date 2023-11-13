import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utilits/assets.dart';
import 'package:bookly_app/core/utilits/styles.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/widgets/bookRating.dart';
import 'package:bookly_app/features/widgets/customBookImage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestBooksListViewItem extends StatelessWidget {
  const NewestBooksListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push("/bookDetails"),
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: CustomBookImage(
                  imageURL: bookModel.volumeInfo.imageLinks.smallThumbnail),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      bookModel.volumeInfo.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.teststyle20
                          .copyWith(fontFamily: kGTSectraFine),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.teststyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        "Free",
                        style: Styles.teststyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 30.3,
                      ),
                      const Spacer(),
                      BookRating(
                        average: bookModel.volumeInfo.averageRating ?? 0,
                        count: bookModel.volumeInfo.ratingsCount ?? 0,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
