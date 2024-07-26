import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_rating.dart';

class BookNewestItem extends StatelessWidget {
  const BookNewestItem({super.key, required this.book});

   final BookModel book;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Row(
        children: [
          SizedBox(
            height: 110,
            child: BookImage(
              imageUrl: book.volumeInfo.imageLinks.thumbnail,
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
                    book.volumeInfo.title!,
                    style: TextStyles.textStyle20.copyWith(fontFamily: kGTSectraFineFont, fontWeight: FontWeight.normal),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 2,),
                Text(
                  book.volumeInfo.authors![0],
                  style: TextStyles.textStyle14.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 2,),
                const Text(
                  "00.00 €",
                  style: TextStyles.textStyle20,
                ),
                // Row(
                //   children: [
                //     const Text(
                //       "00.00 €",
                //       style: TextStyles.textStyle20,
                //     ),
                //     const Spacer(),
                //     BookRating(
                //       book: book.volumeInfo.,
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

