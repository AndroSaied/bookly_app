import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';

class SimilarBookItemsListview extends StatelessWidget {
  const SimilarBookItemsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: CustomBookItem(
            imageUrl: "https://c.pxhere.com/photos/d1/ac/cascade_cloudy_environment_falls_lake_landscape_mountain_range_mountains-1174399.jpg!d",
          ),
        );
      },
    );
  }
}
