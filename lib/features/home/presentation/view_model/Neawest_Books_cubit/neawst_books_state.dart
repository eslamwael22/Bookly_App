part of 'neawst_books_cubit.dart';

sealed class NeawstBooksState extends Equatable {
  const NeawstBooksState();

  @override
  List<Object> get props => [];
}

final class NeawstBooksInitial extends NeawstBooksState {}

final class NeawstBooksSuccess extends NeawstBooksState {
  final List<Item> books;
  const NeawstBooksSuccess(this.books);
}

final class NeawstBooksFailure extends NeawstBooksState {
  final String errorMessage;

  const NeawstBooksFailure(this.errorMessage);
}

final class NeawstBooksLoading extends NeawstBooksState {}
