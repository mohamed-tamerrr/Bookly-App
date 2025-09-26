import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar_book_details.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_item_view_body.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_custom_items_list.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                CustomAppBarBookDetails(),
                SizedBox(height: 22),
                CustomItemViewBody(),
                BooksAction(),
                Expanded(child: SizedBox(height: 50)),
                SimilarBooksSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
