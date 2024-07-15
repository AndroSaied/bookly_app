import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utlis/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utlis/assets_data.dart';
import 'book_rating.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        SizedBox(
          height: 110,
          child: AspectRatio(
            aspectRatio: 2.8 / 4,
            child: Image.asset(
              AssetsData.testImage,
            ),
          ),
        ),
        const SizedBox(width: 30,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  "Harry Potter and the Goblet of Fire",
                  style: TextStyles.textStyle20.copyWith(fontFamily: kGTSectraFineFont, fontWeight: FontWeight.normal),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 2,),
              Text(
                "J.K. Rowling",
                style: TextStyles.textStyle14.copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 2,),
              const BookRating(),
            ],
          ),
        ),
      ],
    );
  }
}

