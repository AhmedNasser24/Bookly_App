import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';

class SearchRepoImpl implements SearchRepo{
  final ApiService apiService = ApiService() ;
  @override
  Future<Either<Failure, List<BookModel>>> searchBook(String bookName) async {
    var result = await apiService.get(endpoint: endpoint) ;
  }
}