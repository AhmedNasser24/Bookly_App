import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = '//www.googleapis.com/books/v1/';
  final Dio dio = Dio();
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await dio.get('$_baseUrl$endpoint');
    return response.data;
  }
}
