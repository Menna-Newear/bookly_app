import 'package:bookly_app/features/Home/persentation/views/bookDetailsView.dart';
import 'package:bookly_app/features/Home/persentation/views/homeView.dart';
import 'package:bookly_app/features/search/presentation/views/searchView.dart';
import 'package:bookly_app/features/splash/splash_view.dart';
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
        builder: (context, state) => const BookDetailesView(),
      ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
