import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/error_message.dart';
import 'package:bookly_app/core/widgets/loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilarBookItemsListview extends StatelessWidget {
  const SimilarBookItemsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: CustomBookItem(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: state.books[index]);
                  },
                  imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? "",
                ),
              );
            },
          );
        } else if (state is SimilarBooksFailure) {
          return ErrorMessage(errMessage: state.errMessage);
        } else {
          return const LoadingIndicator();
        }
      },
    );
  }
}
