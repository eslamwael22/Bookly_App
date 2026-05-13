import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: appColors.primaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
