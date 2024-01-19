import 'package:bookly_app/features/Splash/presentation/views/splash_view.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/fetch_similar_book.dart/fetch_similar_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/search/presentation/views/search_view.dart';

class AppRoutes {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => FetchSimilarBookCubit(),
            child: BookDetailsView(
              bookItem: state.extra as BookModel,
            ),
          );
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) {
          return const SearchView();
        },
      )
    ],
  );
}
