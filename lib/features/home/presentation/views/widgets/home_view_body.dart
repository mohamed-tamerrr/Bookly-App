import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newest_books_list.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_item_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Text(
                  'Newest Books',
                  style: AppStyles.styleRegular18,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: NewestBooksListView(),
          ),
        ),
      ],
    );
  }
}
