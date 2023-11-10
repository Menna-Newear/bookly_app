import 'package:bookly_app/features/search/presentation/views/widgets/customSearchTextField.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [CustomSearchTextFeild()],
      ),
    );
  }
}
