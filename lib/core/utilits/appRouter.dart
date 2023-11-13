import 'package:bookly_app/core/utilits/serviceLocator.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/Home/persentation/manger/RelevenceBooksCubit/relevance_books_cubit.dart';
import 'package:bookly_app/features/Home/persentation/views/bookDetailsView.dart';
import 'package:bookly_app/features/Home/persentation/views/homeView.dart';
import 'package:bookly_app/features/search/presentation/views/searchView.dart';
import 'package:bookly_app/features/splash/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/bookDetails',
        builder: (context, state) => BlocProvider(
          create: (context) => RelevanceBooksCubit(
            getit.get<HomeRepoImpl>(),
          ),
          child: BookDetailesView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
