import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures ,List<BookModel>>> fetchBooks();
  Future<Either<Failures ,List<BookModel>>> fetchNewestBooks();
  Future<Either<Failures ,List<BookModel>>> fetchSimilarBooks();
}