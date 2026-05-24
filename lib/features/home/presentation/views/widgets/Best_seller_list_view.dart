import 'package:bookly_app/features/home/presentation/view_model/Neawest_Books_cubit/neawst_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Best_deller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NeawstBooksCubit, NeawstBooksState>(
      builder: (context, state) {
        if (state is NeawstBooksSuccess) {
          return SizedBox(
            height: 400,
            child: ListView.separated(
              physics: const ClampingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return BestSelleritem(book: state.books[index]);
              },
              separatorBuilder: (context, index) => const SizedBox(height: 16),
            ),
          );
        } else if (state is NeawstBooksFailure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(100),
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
