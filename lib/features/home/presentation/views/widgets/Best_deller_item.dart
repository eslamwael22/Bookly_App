import 'package:bookly_app/core/utils/App_Routers.dart';
import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Book_Rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSelleritem extends StatelessWidget {
  final Item? book;

  const BestSelleritem({super.key, this.book});

  @override
  Widget build(BuildContext context) {
    final imageUrl = book?.volumeInfo?.imageLinks?.thumbnail;

    return GestureDetector(
      onTap: () {
        context.push(AppRouters.kBookDetails, extra: book);
      },

      child: Padding(
        padding: const EdgeInsets.only(left: 15),

        child: Row(
          children: [
            SizedBox(
              width: 150,
              height: 210,

              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),

                child: imageUrl != null
                    ? CachedNetworkImage(
                        imageUrl: imageUrl,
                        fit: BoxFit.fill,

                        placeholder: (context, url) =>
                            Center(child: CircularProgressIndicator()),

                        errorWidget: (context, url, error) => Icon(Icons.error),
                      )
                    : Image.asset(AppAssets.testImage, fit: BoxFit.fill),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 50, left: 20),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(
                    width: 150,
                    child: Text(
                      book?.volumeInfo?.title ??
                          'Harry Potter and the Goblet of Fire',

                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,

                      style: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'Grenze',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  SizedBox(
                    width: 150,
                    child: Text(
                      book?.volumeInfo?.authors?.join(', ') ?? 'J.K. Rowling',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 14, fontFamily: 'Cairo'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Book_Rating(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
