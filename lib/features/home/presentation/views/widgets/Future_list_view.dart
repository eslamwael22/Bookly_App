import 'package:bookly_app/features/home/presentation/view_model/Featured_books_cubit/feuterd_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FutureListView extends StatelessWidget {
  const FutureListView({
    super.key,
    this.heightFactor = 0.3,
    this.widthFactor = 0.4,
  });

  final double heightFactor;
  final double widthFactor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: BlocBuilder<FeuterdBooksCubit, FeuterdBooksState>(
        builder: (context, state) {
          if (state is FeuterdBooksSuccess) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * heightFactor,
              child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final book = state.books[index];
                  return CustomListViewItem(book: book);
                },
              ),
            );
          } else if (state is FeuterdBooksFailure) {
            return Center(child: Text(state.errMessage));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
