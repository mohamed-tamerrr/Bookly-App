import 'package:bookly_app/features/home/presentation/views/widgets/custom_item.dart';
import 'package:flutter/material.dart';

class SimilarCustomItemList extends StatelessWidget {
  const SimilarCustomItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(
            right: 15.0,
            top: 20,
          ),
          child: CustomItem(),
        ),
      ),
    );
  }
}
