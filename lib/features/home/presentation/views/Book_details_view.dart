import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  final Item? book;

  const BookDetailsView({super.key, this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BookDetailsViewBody(book: book));
  }
}
