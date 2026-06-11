import 'package:bookly_app/features/Search/presentation/views/widgets/search_text_filed.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Best_seller_list_view.dart';
import 'package:bookly_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SearchTextFiled(),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 230),
          child: Text(
            S.of(context).search_result,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(child: BestSellerListView()),
      ],
    );
  }
}
