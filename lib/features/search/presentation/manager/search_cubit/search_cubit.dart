import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:bookly_app/features/search/data/repos/search_repo_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());
  final SearchRepo searchRepo = SearchRepoImpl();
  Future<void> getSearchResult(String enterBookName) async {
    emit(SearchLoading());
    Either<Failure, List<BookModel>> result =
        await searchRepo.searchBook(enterBookName);
    result.fold(
      (failure) => emit(
        SearchFailure(failure.errMessage),
      ),
      (books) => emit(
        SearchSuccess(books),
      ),
    );
  }
}
