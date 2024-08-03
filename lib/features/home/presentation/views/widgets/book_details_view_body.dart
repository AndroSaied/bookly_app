import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_items_section.dart';
import 'package:flutter/material.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                BookDetailsSection(
                  book: book,
                ),
                const SizedBox(height: 45,),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: SimilarBooksItemsSection(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
