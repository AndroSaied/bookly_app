import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_items_section.dart';
import 'package:flutter/material.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return const Expanded(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              children: [
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 42,)),
                SimilarBooksItemsSection(),
                SizedBox(height: 36,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
