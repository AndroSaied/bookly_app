import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/error_message.dart';
import 'package:bookly_app/core/widgets/loading_indicator.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/text_styles.dart';
import '../../../../home/presentation/views/widgets/book_newest_item.dart';

class SearchResultListview extends StatelessWidget {
  const SearchResultListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: SearchResultItem(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: state.books[index]);
                  },
                  book: state.books[index],
                ),
              );
            },
          );
        } else if (state is SearchFailure) {
          return ErrorMessage(errMessage: state.errMessage);
        } else if (state is SearchLoading) {
          return const LoadingIndicator();
        } else {
          return const Center(
            child: Text(
              "What are you looking for?",
              style: TextStyles.textStyle18,
            ),
          );
        }
      },
    );
  }
}