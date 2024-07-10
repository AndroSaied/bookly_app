import 'package:bookly_app/features/home/presentation/views/widgets/book_items_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 220, child: BookItemsListview(),),
      ],
    );
  }
}
