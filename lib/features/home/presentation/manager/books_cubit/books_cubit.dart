import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model/book_model.dart';

part 'books_state.dart';

class BooksCubit extends Cubit<BooksState> {
  BooksCubit(this.homeRepo) : super(BooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchBooks() async {
    emit(BooksLoading());
    var result = await homeRepo.fetchBooks();
    result.fold((failure) {
      emit(BooksFailure(failure.errMessage));
    }, (books) {
      emit(BooksSuccess(books));
    },);
  }

}
