import 'package:bookly_app/features/Home/persentation/manger/RelevenceBooksCubit/relevance_books_cubit.dart';
import 'package:bookly_app/features/widgets/customBookImage.dart';
import 'package:bookly_app/features/widgets/customErrMessage.dart';
import 'package:bookly_app/features/widgets/loadingIndecatorWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecoomendedBooksListView extends StatelessWidget {
  const RecoomendedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RelevanceBooksCubit, RelevanceBooksState>(
      builder: (context, state) {
        if (state is RelevanceBooksSucess) {
          return SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    return CustomBookImage(
                        imageURL: state.books[index].volumeInfo.imageLinks
                                ?.smallThumbnail ??
                            "");
                  }));
        } else if (state is RelevanceBooksFailure) {
          return CustomErrWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
