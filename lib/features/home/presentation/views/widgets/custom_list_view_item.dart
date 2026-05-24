import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  final Item? book;

  const CustomListViewItem({super.key, this.book});

  @override
  Widget build(BuildContext context) {
    final imageUrl = book?.volumeInfo?.imageLinks?.thumbnail?.replaceFirst(
      'http://',
      'https://',
    );

    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: SizedBox(
        width: 180,
        height: 270,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: imageUrl != null
              ? CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.fill,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                )
              : Image.asset(AppAssets.testImage, fit: BoxFit.fill),
        ),
      ),
    );
  }
}
