import 'dart:math';

import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Best_deller_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Future_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const FutureListView(),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text('Best Seller', style: AppStyles.TitleMedium),
        ),
        const BestSellerListView(),
      ],
    );
  }
}
