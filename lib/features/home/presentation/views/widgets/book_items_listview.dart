import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/error_message.dart';
import 'package:bookly_app/core/widgets/loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../manager/books_cubit/books_cubit.dart';

class BookItemsListview extends StatelessWidget {
  const BookItemsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksCubit, BooksState>(
      builder: (context, state) {
        if (state is BooksSuccess) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.books.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding:const EdgeInsets.only(right: 12.0),
                child: CustomBookItem(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: state.books[index]);
                  },
                  imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? "",
                ),
              );
            },
          );
        } else if (state is BooksFailure) {
          return ErrorMessage(errMessage: state.errMessage);
        } else {
          return const LoadingIndicator();
        }
      },
    );
  }
}
