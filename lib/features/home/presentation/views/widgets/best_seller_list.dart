import 'package:bookly_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';

class BookItemsList extends StatelessWidget {
  const BookItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: BookItem(),
      ),
    );
  }
}
