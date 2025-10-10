import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewsBooksCubitState> {
  NewestBooksCubit(this.homeRepo) : super(NewsBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (l) {
        emit(NewsBooksFail(errMsg: l.errMsg));
      },
      (r) {
        emit(NewestBooksSuccess(books: r));
      },
    );
  }
}
