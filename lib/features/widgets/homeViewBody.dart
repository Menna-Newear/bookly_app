import 'package:bookly_app/core/utilits/styles.dart';
import 'package:bookly_app/features/widgets/BooksListView.dart';
import 'package:bookly_app/features/widgets/bestSellerListView.dart';
import 'package:bookly_app/features/widgets/bestSellerListViewItem.dart';
import 'package:bookly_app/features/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(
                  iconImage: Icon(Icons.search),
                ),
                BooksListView(),
                SizedBox(
                  height: 49,
                ),
                Text(
                  "Best Seller",
                  style: Styles.titleMedium18,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
