import 'package:bookly_app/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/text_styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchTextField(
              onSubmitted: (value) {
                BlocProvider.of<SearchCubit>(context).fetchSearchResult(value);
              },
            ),
            const SizedBox(height: 40,),
            const Text(
              "Search Result",
              style: TextStyles.textStyle18,
            ),
            const SizedBox(height: 5,),
            const Expanded(
              child: SearchResultListview(),
            ),
          ],
        ),
      ),
    );
  }
}
