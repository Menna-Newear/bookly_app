import 'package:bookly_app/features/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(
          iconImage: Icon(Icons.search),
        ),
      ],
    );
  }
}
