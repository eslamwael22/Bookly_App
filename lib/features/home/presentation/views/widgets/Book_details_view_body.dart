import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Custom_book_details_app_bar.dart';
import 'package:bookly_app/generated/l10n.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Future_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, this.book});
  final Item? book;

  @override
  Widget build(BuildContext context) {
    final title = book?.volumeInfo?.title ?? S.of(context).no_title_available;
    final author =
        book?.volumeInfo?.authors?.first ?? S.of(context).no_author_available;
    final imageUrl = book?.volumeInfo?.imageLinks?.thumbnail;

    return Column(
      children: [
        CustomDetailsBookAppBar(),
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: CustomListViewItem(book: book),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
          child: Text(
            title,
            style: AppStyles.TitleBold,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            author,
            style: AppStyles.Titlesmall,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(height: 2),
        Padding(
          padding: const EdgeInsets.only(left: 140),
          child: Row(
            children: const [
              Icon(Icons.star, color: Colors.yellow),
              SizedBox(width: 5),
              Text('4.8', style: AppStyles.TitleMedium),
              SizedBox(width: 5),
              Text('(2930)', style: AppStyles.TitleMedium),
            ],
          ),
        ),
        BookActions(book: book),
        Padding(
          padding: const EdgeInsets.only(right: 210),
          child: Text(
            S.of(context).you_can_also_like,
            style: AppStyles.TitleMedium,
          ),
        ),
        const SizedBox(height: 10),
        const FutureListView(heightFactor: 0.25, widthFactor: 0.40),
      ],
    );
  }
}
