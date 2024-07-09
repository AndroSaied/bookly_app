import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utlis/assets_data.dart';

class CustomHomeBar extends StatelessWidget {
  const CustomHomeBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 36.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AssetsData.logo,
            height: 22,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.search,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
