import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_details_view_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: CustomDetailsViewBar(),
            ),
            SizedBox(height: 10,),
            BookDetailsViewBody(),
          ],
        ),
      ),
    );
  }
}
