import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utilits/styles.dart';
import 'package:bookly_app/features/widgets/customBookDetailsAppBar.dart';
import 'package:bookly_app/features/widgets/customBookImage.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookImage(),
          ),
          Text(
            "The Jungle Book ",
            style: Styles.teststyle30.copyWith(
              fontFamily: kGTSectraFine,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: 0.7,
            child: Text("Rudyard Kipling ",
                style: Styles.titleMedium18.copyWith(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                )),
          ),
        ],
      ),
    );
  }
}
