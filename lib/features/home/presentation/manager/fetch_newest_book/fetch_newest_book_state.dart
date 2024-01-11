part of 'fetch_newest_book_cubit.dart';

abstract class FetchNewestBookState extends Equatable {
  const FetchNewestBookState();

  @override
  List<Object> get props => [];
}

class FetchNewestBookInitial extends FetchNewestBookState {}

class FetchNewestBookLoading extends FetchNewestBookState {}

class FetchNewestBookFailure extends FetchNewestBookState {
  final String errMessage;

  const FetchNewestBookFailure(this.errMessage);
}

class FetchNewestBookSuccess extends FetchNewestBookState {
  final List<BookModel> books;

  const FetchNewestBookSuccess(this.books);
}
