import 'package:bookly_app/core/utils/Api_service.dart';
import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/Repos/Home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/view_model/Featured_books_cubit/feuterd_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_model/Neawest_Books_cubit/neawst_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeuterdBooksCubit(getIt.get<HomeRepoImpl>())
                ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NeawstBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColors.primaryColor,
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
