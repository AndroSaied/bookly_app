import 'package:bookly_app/features/home/presentation/views/widgets/book_action_buttons.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_items_listview.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/text_styles.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.36,
                  child: const BookImage(),
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
                const BookActionButtons(),
                Padding(
                  padding: const EdgeInsets.only(top: 42, left: 30, bottom: 16,),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "You can also like",
                      style: TextStyles.textStyle14.copyWith(color: Colors.white, fontWeight: FontWeight.w600,),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: SizedBox(
                    height: 110,
                    child: SimilarBookItemsListview(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
