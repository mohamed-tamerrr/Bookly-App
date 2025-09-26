import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_item.dart';
import 'package:flutter/material.dart';

class CustomItemViewBody extends StatelessWidget {
  const CustomItemViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * .16,
          ),
          child: const CustomItem(),
        ),
        SizedBox(height: 42),
        Text(
          'The Jungle Book',
          style: AppStyles.styleRegular30,
        ),
        SizedBox(height: 13),
        Text(
          'Rudyard Kipling',
          style: AppStyles.styleRegular18.copyWith(
            color: Colors.white.withOpacity(.7),
          ),
        ),
        SizedBox(height: 20),
        BookRating(),
        SizedBox(height: 41),
      ],
    );
  }
}
