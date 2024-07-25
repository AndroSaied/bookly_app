import 'package:bookly_app/features/home/presentation/views/widgets/book_action_buttons.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/text_styles.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.36,
          child: const BookImage(
            imageUrl: "https://c.pxhere.com/photos/d1/ac/cascade_cloudy_environment_falls_lake_landscape_mountain_range_mountains-1174399.jpg!d",
          ),
        ),
        const SizedBox(height: 35,),
        const Text(
          "The Jungle Book",
          style: TextStyles.textStyle30,
        ),
        const SizedBox(height: 4,),
        Text(
          "Rudyard Kipling",
          style: TextStyles.textStyle18
              .copyWith(fontWeight: FontWeight.w500, fontStyle: FontStyle.italic, color: Colors.white.withOpacity(0.7),),
        ),
        const SizedBox(height: 12,),
        const BookRating(),
        const SizedBox(height: 30,),
        const BookActionButtons()
      ],
    );
  }
}