import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar_book_details.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomAppBarBookDetails(),
          SizedBox(height: 22),
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
        ],
      ),
    );
  }
}
