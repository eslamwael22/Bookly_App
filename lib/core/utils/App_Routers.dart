import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const khomeview = "/homeview";
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: khomeview, builder: (context, state) => const HomeView()),
    ],
  );
}
