import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../data/models/book_model/book_model.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    super.key, required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            // image: AssetImage(AssetsData.testImage),
            image: NetworkImage(imageUrl),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
