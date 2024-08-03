import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../../../core/models/book_model/book_model.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks() async {
    var result = await homeRepo.fetchSimilarBooks();
    result.fold((failure) {
      emit(SimilarBooksFailure(failure.errMessage));
    }, (similarBooks) {
      emit(SimilarBooksSuccess(similarBooks));
    },);
  }
}
