import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_item_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          CustomItemList(),
          SizedBox(height: 50),
          Text(
            'Best Seller',
            style: AppStyles.styleRegular18,
          ),
          SizedBox(height: 25),
          BookItem(),
        ],
      ),
    );
  }
}
