part of 'newest_books_cubit.dart';

sealed class NewsBooksCubitState extends Equatable {
  const NewsBooksCubitState();

  @override
  List<Object> get props => [];
}

final class NewsBooksInitial extends NewsBooksCubitState {}

final class NewsBooksFail extends NewsBooksCubitState {
  final String errMsg;

  const NewsBooksFail({required this.errMsg});
}

final class NewestBooksLoading extends NewsBooksCubitState {}

final class NewestBooksSuccess extends NewsBooksCubitState {
  final List<BookModel> books;

  const NewestBooksSuccess({required this.books});
}
