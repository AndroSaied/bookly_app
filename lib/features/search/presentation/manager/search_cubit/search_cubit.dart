import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:meta/meta.dart';

import '../../../../../core/models/book_model/book_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  Future<void> fetchSearchResult(final String searchWord) async {
    emit(SearchLoading());
    var result = await searchRepo.fetchSearchResult(searchWord);
    result.fold((failure) {
      emit(SearchFailure(failure.errMessage));
    }, (books) {
      emit(SearchSuccess(books));
    },);
  }
}
