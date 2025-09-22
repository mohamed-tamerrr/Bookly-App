import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_item_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        CustomItemList(),

        Padding(
          padding: const EdgeInsets.only(
            bottom: 25,
            left: 30,
            top: 50,
          ),
          child: Text(
            'Best Seller',
            style: AppStyles.styleRegular18,
          ),
        ),
      ],
    );
  }
}
