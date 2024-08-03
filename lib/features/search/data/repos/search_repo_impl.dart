import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  @override
  Future<Either<Failures, List<BookModel>>> fetchSearchResult(final String searchWord) async {
    try {
      var data = await ApiService().get(endPoint: "?Filtering=free-ebooks&q=$searchWord");
      List<BookModel> searchResults = [];
      for (var item in data["items"]) {
        searchResults.add(BookModel.fromJson(item));
      }
      return right(searchResults);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}