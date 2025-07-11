import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/services/api_service.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService = ApiService();
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data =
          await apiService.get(endpoint: 'volumes?orderBy=newest&q=subject:');
      List<BookModel> book = [];
      for (var item in data['items']) {
        book.add(BookModel.fromJson(item));
      }
      return right(book);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endpoint: 'volumes?q=subject:&orderBy=relevance');
      List<BookModel> book = [];
      for (var item in data['items']) {
        book.add(BookModel.fromJson(item));
      }
      return right(book);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endpoint: 'volumes?q=subject:$category&sorted=relevance');
      List<BookModel> book = [];
      for (var item in data['items']) {
        
          book.add(BookModel.fromJson(item));
        
      }
      return right(book);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
