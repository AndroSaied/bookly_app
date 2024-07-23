part of 'books_cubit.dart';

@immutable
sealed class BooksState {}

final class BooksInitial extends BooksState {}
final class BooksLoading extends BooksState {}

final class BooksSuccess extends BooksState {
  final List<BookModel> books;

  BooksSuccess(this.books);
}

final class BooksFailure extends BooksState {
  final String errMessage;

  BooksFailure(this.errMessage);
}
