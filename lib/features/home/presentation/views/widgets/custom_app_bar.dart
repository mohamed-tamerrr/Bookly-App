import 'package:bookly_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bookly_app/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            AppImages.logo,
            height: 18,
            width: 75,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
