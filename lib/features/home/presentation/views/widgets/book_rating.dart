import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 15,
        ),
        SizedBox(width: 6),
        Text('0', style: AppStyles.styleRegular16),
        SizedBox(width: 6),
        Text(
          '(0)',
          style: AppStyles.styleRegular14.copyWith(
            color: Colors.white.withOpacity(.5),
          ),
        ),
      ],
    );
  }
}
