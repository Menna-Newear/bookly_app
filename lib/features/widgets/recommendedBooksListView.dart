import 'package:bookly_app/features/widgets/customBookImage.dart';
import 'package:flutter/material.dart';

class RecoomendedBooksListView extends StatelessWidget {
  const RecoomendedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const CustomBookImage();
            }));
  }
}
