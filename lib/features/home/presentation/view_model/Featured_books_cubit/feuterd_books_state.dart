part of 'feuterd_books_cubit.dart';

sealed class FeuterdBooksState extends Equatable {
  const FeuterdBooksState();

  @override
  List<Object> get props => [];
}

final class FeuterdBooksInitial extends FeuterdBooksState {}

final class FeuterdBooksLoading extends FeuterdBooksState {}

final class FeuterdBooksSuccess extends FeuterdBooksState {
  final List<Item> books;
  const FeuterdBooksSuccess(this.books);
}

final class FeuterdBooksFailure extends FeuterdBooksState {
  final String errMessage;
  const FeuterdBooksFailure(this.errMessage);
}
