import 'package:bookly_app/features/home/presentation/views/widgets/custom_home_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomHomeBar(),
            ),
            HomeViewBody(),
          ],
        ),
    );
  }
}

