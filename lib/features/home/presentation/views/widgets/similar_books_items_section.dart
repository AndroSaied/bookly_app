import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_items_listview.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/text_styles.dart';

class SimilarBooksItemsSection extends StatelessWidget {
  const SimilarBooksItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, bottom: 16,),
          child: Text(
            "You can also like",
            style: TextStyles.textStyle14.copyWith(color: Colors.white, fontWeight: FontWeight.w600,),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: SizedBox(
            height: 110,
            child: SimilarBookItemsListview(),
          ),
        ),
        const SizedBox(height: 36,)
      ],
    );
  }
}