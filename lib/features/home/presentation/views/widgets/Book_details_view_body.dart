import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Future_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDetailsBookAppBar(),
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: CustomListViewItem(),
        ),
        Text('The Jungle Book', style: AppStyles.TitleBold),
        Text('Rudyard Kipling', style: AppStyles.Titlesmall),
        const SizedBox(height: 7),
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
        BookActions(),
        Padding(
          padding: const EdgeInsets.only(right: 210),
          child: Text('You can also like', style: AppStyles.TitleMedium),
        ),
        const SizedBox(height: 20),
        const FutureListView(heightFactor: 0.25, widthFactor: 0.40),
      ],
    );
  }
}
