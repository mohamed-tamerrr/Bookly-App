import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_widget.dart';
import 'package:bookly_app/features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: BookItem(book: state.books[index]),
            ),
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errMsg: state.errMsg);
        } else {
          return CustomLoadingWidget();
        }
      },
    );
  }
}
