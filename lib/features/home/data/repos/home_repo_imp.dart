import 'package:dartz/dartz.dart';

import 'package:bookly_app/core/erorrs/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  ApiService apiService;
  HomeRepoImp({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>>
  fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Programming',
      );
      List<BookModel> books = [];
      for (var element in data['items']) {
        books.add(BookModel.formJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(errorMassage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>>
  fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&q=subject:Programming',
      );
      List<BookModel> books = [];
      for (var element in data['items']) {
        books.add(BookModel.formJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(errorMassage: e.toString()));
      }
    }
  }
}
