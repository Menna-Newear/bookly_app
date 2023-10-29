import 'package:bookly_app/core/utilits/assets.dart';
import 'package:bookly_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AssetsConstant.testImage,
                    ),
                  )),
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Book Title",
                style: Styles.titleMedium18,
              ),
              Text("Acthor Name"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Price"),
                  Text("Rating"),
                  Text("Count Rating"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
