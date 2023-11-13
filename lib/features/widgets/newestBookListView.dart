import 'package:bookly_app/features/Home/persentation/manger/newestBooksCubit/newest_books_cubit.dart';
import 'package:bookly_app/features/widgets/customErrMessage.dart';
import 'package:bookly_app/features/widgets/loadingIndecatorWidget.dart';
import 'package:bookly_app/features/widgets/newestBooksListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: NewestBooksListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              });
        } else if (state is NewestBooksFailure) {
          return CustomErrWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
