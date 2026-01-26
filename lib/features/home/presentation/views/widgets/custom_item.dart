import 'package:bookly_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key, required this.imageUrl});

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),

          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
