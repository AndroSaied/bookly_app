import 'package:bookly_app/features/home/presentation/views/widgets/book_action_buttons.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/text_styles.dart';
import '../../../../../core/models/book_model/book_model.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key,required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.36,
          child: BookImage(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? "",
          ),
        ),
        const SizedBox(height: 35,),
        Text(
          book.volumeInfo.title!,
          style: TextStyles.textStyle30,textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4,),
        Text(
          book.volumeInfo.authors.toString(),
          style: TextStyles.textStyle18
              .copyWith(fontWeight: FontWeight.w500, fontStyle: FontStyle.italic, color: Colors.white.withOpacity(0.7),),
          textAlign: TextAlign.center,
        ),
        // const SizedBox(height: 12,),
        // const BookRating(),
        const SizedBox(height: 30,),
        BookActionButtons(
          book: book,
        ),
      ],
    );
  }
}