import 'package:bookly_app/core/utilits/assets.dart';
import 'package:bookly_app/features/widgets/homeViewBody.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
