import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomButton(msg: '19.99€')),
        SizedBox(width: 0.5),
        Expanded(
          child: CustomButton(
            color: Color(0xffEF8262),
            msg: 'Free preview',
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(18),
              bottomLeft: Radius.circular(18),
            ),
          ),
        ),
      ],
    );
  }
}
