import 'package:bookly_app/core/widgets/error_message.dart';
import 'package:bookly_app/core/widgets/loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_newest_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBookListview extends StatelessWidget {
  const NewestBookListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.newestBooks.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: BookNewestItem(
                  book: state.newestBooks[index],
                ),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return ErrorMessage(errMessage: state.errMessage);
        } else {
          return const LoadingIndicator();
        }
      },
    );
  }
}
