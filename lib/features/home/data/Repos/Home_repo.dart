import 'package:bookly_app/core/errors/Fauires.dart';
import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Item>>> fetchNewestBooks();
  Future<Either<Failure, List<Item>>> fetchFeaturedBooks();
}
