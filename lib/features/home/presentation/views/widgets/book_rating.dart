import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/text_styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key, required this.rating, required this.count,
  });

  final int rating, count;

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          CupertinoIcons.star_fill,
          color: Color(0xffFFDD4F),
          size: 18,
        ),
        SizedBox(width: 3,),
        Text(
          "4.8",
          style: TextStyles.textStyle16,
        ),
        SizedBox(width: 5,),
        Text(
          "(2390)",
          style: TextStyles.textStyle14,
        )
      ],
    );
  }
}
