import 'package:bookly_app/features/home/presentation/manager/fetch_newest_book/fetch_newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../manager/fetch_feature_book_cubit/fetch_featured_book_cubit.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = "Home View";
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FetchFeaturedBookCubit()..getFeatureBooks(),
        ),
        BlocProvider(
          create: (context) => FetchNewestBookCubit()..getNewestBooks(),
        )
      ],
      child: const Scaffold(
        body: SafeArea(child: HomeViewBody()),
      ),
    );
  }
}
