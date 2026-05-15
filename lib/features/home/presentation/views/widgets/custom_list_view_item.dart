import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  final Item? book;

  const CustomListViewItem({super.key, this.book});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 270,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: book?.volumeInfo?.imageLinks?.thumbnail != null
                ? NetworkImage(book!.volumeInfo!.imageLinks!.thumbnail!)
                : AssetImage(AppAssets.testImage),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
