import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'fetch_similar_book_state.dart';

class FetchSimilarBookCubit extends Cubit<FetchSimilarBookState> {
  final HomeRepo homeRepo = HomeRepoImpl() ;
  FetchSimilarBookCubit() : super(FetchSimilarBookInitial());
  Future<void> getSimilarBooks({required String category}) async {
    emit(FetchSimilarBookLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(FetchSimilarBookFailure(failure.errMessage));
    }, (books) {
      emit(FetchSimilarBookSuccess(books));
    });
  }
}
