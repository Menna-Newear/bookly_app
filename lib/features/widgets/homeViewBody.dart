import 'package:bookly_app/core/utilits/styles.dart';
import 'package:bookly_app/features/widgets/BooksListView.dart';
import 'package:bookly_app/features/widgets/customAppBar.dart';
import 'package:bookly_app/features/widgets/customListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            iconImage: Icon(Icons.search),
          ),
          BooksListView(),
          GutterLarge(),
          Text(
            "Best Seller",
            style: Styles.titleMedium,
          )
        ],
      ),
    );
  }
}
