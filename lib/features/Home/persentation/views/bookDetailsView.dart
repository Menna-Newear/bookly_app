import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/persentation/manger/RelevenceBooksCubit/relevance_books_cubit.dart';
import 'package:bookly_app/features/widgets/bookDetailsViewBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailesView extends StatefulWidget {
  const BookDetailesView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailesView> createState() => _BookDetailesViewState();
}

class _BookDetailesViewState extends State<BookDetailesView> {
  @override
  void initState() {
    BlocProvider.of<RelevanceBooksCubit>(context).fetchReleventBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(
          bookModel: widget.bookModel,
        ),
      ),
    );
  }
}
