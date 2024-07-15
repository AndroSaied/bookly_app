import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utlis/text_styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "19.99 €",
          style: TextStyles.textStyle20,
        ),
        Spacer(),
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
