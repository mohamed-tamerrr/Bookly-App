import 'package:bookly_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.25,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.blue,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AppImages.test),
            ),
          ),
        ),
      ),
    );
  }
}
