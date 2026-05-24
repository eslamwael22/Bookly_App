import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/Repos/Home_repo.dart';
import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:equatable/equatable.dart';

part 'feuterd_books_state.dart';

class FeuterdBooksCubit extends Cubit<FeuterdBooksState> {
  FeuterdBooksCubit(this.homeRepo) : super(FeuterdBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeuterdBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(FeuterdBooksFailure(failure.message)),
      (books) => emit(FeuterdBooksSuccess(books)),
    );
  }
}
