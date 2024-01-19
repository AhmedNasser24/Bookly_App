part of 'fetch_similar_book_cubit.dart';

abstract class FetchSimilarBookState extends Equatable {
  const FetchSimilarBookState();

  @override
  List<Object> get props => [];
}

class FetchSimilarBookInitial extends FetchSimilarBookState {}

class FetchSimilarBookLoading extends FetchSimilarBookState {}

class FetchSimilarBookFailure extends FetchSimilarBookState {
  final String errMessage;

  const FetchSimilarBookFailure(this.errMessage);
}

class FetchSimilarBookSuccess extends FetchSimilarBookState {
  final List<BookModel> books;

  const FetchSimilarBookSuccess(this.books);
}
