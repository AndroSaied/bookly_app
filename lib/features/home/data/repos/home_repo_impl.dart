import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await ApiService().get(endPoint: "?Filtering=free-ebooks&q=programming&orderBy=newest");

      List<BookModel> newestBooks = [];
      for(var item in data["items"]) {
        newestBooks.add(item);
      }

      return right(newestBooks);

    } catch (e) {
      if(e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }

  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchBooks() async {
    try {
      var data = await ApiService().get(endPoint: "?Filtering=free-ebooks&q=programming");

      List<BookModel> books = [];
      for(var item in data["items"]) {
        books.add(item);
      }

      return right(books);

    } catch (e) {
      if(e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

}