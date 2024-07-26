import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manager/books_cubit/books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_home_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BooksCubit(getIt.get<HomeRepoImpl>())..fetchBooks(),),
        BlocProvider(create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),),
      ],
      child: const Scaffold(
        body: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomHomeBar(),
              ),
              HomeViewBody(),
            ],
          ),
      ),
    );
  }
}

