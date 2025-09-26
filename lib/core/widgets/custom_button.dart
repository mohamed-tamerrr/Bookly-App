import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.color = Colors.white,
    required this.msg,
    this.textColor = Colors.black,
    this.borderRadius,
  });
  final String msg;
  final Color color;
  final Color textColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius:
                borderRadius ??
                BorderRadius.only(
                  topLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18),
                ),
          ),
        ),
        onPressed: () {},
        child: Text(
          msg,
          style: AppStyles.styleRegular16.copyWith(color: textColor),
        ),
      ),
    );
  }
}
