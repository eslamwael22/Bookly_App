import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/Repos/Home_repo.dart';
import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:equatable/equatable.dart';

part 'neawst_books_state.dart';

class NeawstBooksCubit extends Cubit<NeawstBooksState> {
  NeawstBooksCubit(this.homeRepo) : super(NeawstBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NeawstBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) => emit(NeawstBooksFailure(failure.message)),
      (books) => emit(NeawstBooksSuccess(books)),
    );
  }
}
