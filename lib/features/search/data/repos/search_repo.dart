import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failures, List<BookModel>>> fetchSearchResult(final String searchWord);
}