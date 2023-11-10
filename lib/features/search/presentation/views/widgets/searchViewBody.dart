import 'package:bookly_app/core/utilits/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/customSearchTextField.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/searchResultListView.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CustomSearchTextFeild(),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Search Result",
              style: Styles.titleMedium18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
