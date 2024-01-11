part of 'fetch_featured_book_cubit.dart';

abstract class FetchFeaturedBookState extends Equatable {
  const FetchFeaturedBookState();

  @override
  List<Object> get props => [];
}

class FetchFeaturedBookInitial extends FetchFeaturedBookState {}

class FetchFeaturedBookLoading extends FetchFeaturedBookState {}

class FetchFeaturedBookFailure extends FetchFeaturedBookState {
  final String errMessage;

  const FetchFeaturedBookFailure(this.errMessage);
}

class FetchFeaturedBookSucceed extends FetchFeaturedBookState {
  final List<BookModel> book;

  const FetchFeaturedBookSucceed(this.book);
}
