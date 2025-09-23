import 'package:bookly_app/core/utils/app_images.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 71 / 113,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AppImages.test),
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width:
                      MediaQuery.sizeOf(context).width * .5,
                  child: Text(
                    'The Jungle Book',

                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.styleRegular20
                        .copyWith(),
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  'Rudyard Kipling',
                  style: AppStyles.styleRegular14.copyWith(
                    color: Colors.white.withOpacity(.7),
                  ),
                ),
                SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: AppStyles.styleRegular20,
                    ),
                    Spacer(),
                    BookRating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
