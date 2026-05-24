import 'package:bookly_app/core/errors/Fauires.dart';
import 'package:bookly_app/core/utils/Api_service.dart';
import 'package:bookly_app/features/home/data/Repos/Home_repo.dart';
import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<Item>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?q=flutter&filter=free-ebooks&orderBy=relevance&key=AIzaSyDcMKybPl-uRbrYPw-ZFnwz1WiXltpUmsA',
      );
      List<Item> books = [];
      for (var item in data['items'] ?? []) {
        // ✅ null safety
        books.add(Item.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Item>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?q=subject: programming&filter=free-ebooks&orderBy=newest&key=AIzaSyDcMKybPl-uRbrYPw-ZFnwz1WiXltpUmsA',
      );
      List<Item> books = [];
      for (var item in data['items'] ?? []) {
        books.add(Item.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
