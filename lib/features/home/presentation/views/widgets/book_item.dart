import 'package:bookly_app/core/utils/app_images.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          GoRouter.of(context).push(AppRouter.kBookDetailsView),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 71 / 113,
              child: CustomItem(
                imageUrl: book.volumeInfo.imageLinks.thumbnail,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * .5,
                    child: Text(
                      book.volumeInfo.title!,

                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.styleRegular20.copyWith(),
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    book.volumeInfo.authors![0],
                    style: AppStyles.styleRegular14.copyWith(
                      color: Colors.white.withOpacity(.7),
                    ),
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        'Free',
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
      ),
    );
  }
}
