import 'package:bookly_app/core/utils/errors.dart';
import 'package:dartz/dartz.dart';

import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>>
  fetchBestSellerBooks();

  Future<Either<Failure, List<BookModel>>> fetchBooks();
}
