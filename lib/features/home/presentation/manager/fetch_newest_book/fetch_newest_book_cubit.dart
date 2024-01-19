import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'fetch_newest_book_state.dart';

class FetchNewestBookCubit extends Cubit<FetchNewestBookState> {
  FetchNewestBookCubit() : super(FetchNewestBookInitial());
  final HomeRepo homeRepo = HomeRepoImpl();
  Future<void> getNewestBooks() async {
    emit(FetchNewestBookLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(FetchNewestBookFailure(failure.errMessage));
    }, (books) {
      emit(FetchNewestBookSuccess(books));
    });
  }
}
