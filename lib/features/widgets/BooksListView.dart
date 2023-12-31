import 'package:bookly_app/features/Home/persentation/manger/featuredBooksCubit/featured_books_cubit.dart';
import 'package:bookly_app/features/widgets/customBookImage.dart';
import 'package:bookly_app/features/widgets/customErrMessage.dart';
import 'package:bookly_app/features/widgets/loadingIndecatorWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: state.Books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: GestureDetector(
                      onTap: () => GoRouter.of(context).push(
                        "/bookDetails",
                        extra: state.Books[index],
                      ),
                      child: CustomBookImage(
                        imageURL: state.Books[index].volumeInfo.imageLinks
                                ?.thumbnail ??
                            "",
                      ),
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
