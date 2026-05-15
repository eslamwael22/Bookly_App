import 'package:bookly_app/core/utils/App_Routers.dart';
import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Book_Rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSelleritem extends StatelessWidget {
  final Item? book;

  const BestSelleritem({super.key, this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRouters.kBookDetails);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Row(
          children: [
            Container(
              width: 150,
              height: 210,
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
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150,
                    child: Text(
                      book?.volumeInfo?.title ??
                          'Harry Potter \nand the Goblet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Grenze',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    book?.volumeInfo?.authors?.join(', ') ?? 'J.K. Rowling',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14, fontFamily: 'Cairo'),
                  ),
                  SizedBox(height: 10),
                  Book_Rating(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
