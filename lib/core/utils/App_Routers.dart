import 'package:bookly_app/features/Search/presentation/views/Search_view.dart';
import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:bookly_app/features/home/presentation/views/Book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const khomeview = "/homeview";
  static const kBookDetails = "/bookdetailsview";
  static const kSearchView = "/searchview";
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: khomeview, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kBookDetails,
        builder: (context, state) =>
            BookDetailsView(book: state.extra as Item?),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
