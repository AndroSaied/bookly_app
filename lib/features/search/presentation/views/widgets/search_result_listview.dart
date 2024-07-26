import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/book_newest_item.dart';

class SearchResultListview extends StatelessWidget {
  const SearchResultListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          // child: BookNewestItem(),
          child: Text("data"),
        );
      },
    );
  }
}