import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'fetch_featured_book_state.dart';

class FetchFeaturedBookCubit extends Cubit<FetchFeaturedBookState> {
  FetchFeaturedBookCubit() : super(FetchFeaturedBookInitial());
  final HomeRepo homeRepo = HomeRepoImpl();
  Future<void> getFeatureBooks() async {
    emit(FetchFeaturedBookLoading());
    Either<Failure, List<BookModel>> result =
        await homeRepo.fetchFeatureBooks();
    result.fold((failure) {
      emit(FetchFeaturedBookFailure(failure.errMessage));
    }, (books) {
      emit(FetchFeaturedBookSucceed(books));
    });
  }
}
