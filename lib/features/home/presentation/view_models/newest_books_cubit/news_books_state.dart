part of 'news_books_cubit.dart';

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

final class NewsBooksLoading extends NewsBooksCubitState {}

final class NewsBooksSuccess extends NewsBooksCubitState {
  final List<BookModel> books;

  const NewsBooksSuccess({required this.books});
}
