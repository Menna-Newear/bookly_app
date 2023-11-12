import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utilits/api_service.dart';
import 'package:bookly_app/core/utilits/appRouter.dart';
import 'package:bookly_app/core/utilits/serviceLocator.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/Home/persentation/manger/featuredBooksCubit/featured_books_cubit.dart';
import 'package:bookly_app/features/Home/persentation/manger/newestBooksCubit/newest_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewestBooksCubit(getit.get<HomeRepoImpl>()),
        ),
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getit.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
