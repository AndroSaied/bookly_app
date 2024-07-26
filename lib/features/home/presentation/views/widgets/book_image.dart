import 'package:bookly_app/core/widgets/loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class BookImage extends StatelessWidget {
  const BookImage({
    super.key, required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          errorWidget: (context, url, error) {
            return const Icon(Icons.error_outline);
          },
          placeholder: (context, url) {
            return const LoadingIndicator();
          },
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
