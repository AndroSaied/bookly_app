import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_items_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: CustomScrollView(

        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 220, child: BookItemsListview(),),
                  Padding(
                    padding: EdgeInsets.only(top: 51.0, bottom: 20,),
                    child: Text(
                      "Best Seller",
                      style: TextStyles.textStyle18,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 47.0),
                    child: BestSellerListview(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
