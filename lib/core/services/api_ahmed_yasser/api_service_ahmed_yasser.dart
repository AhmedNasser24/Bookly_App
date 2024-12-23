import 'package:bookly_app/core/secrets/secrets.dart';
import 'package:dio/dio.dart';

class ApiServiceAhmedYasser {
  final Dio _dio = Dio();

  Future<Response> get({required String endpoint}) async {
    var response = await _dio.get('$Secrets.baseUrl$endpoint');
    return response;
  }

  Future<Response> post(
      {required String endpoint, required Map<String, dynamic> data}) async {
    var response = await _dio.post(
      '$Secrets.baseUrl$endpoint',
      data: data,
      options: Options(
        contentType: 'application/json',
      ),
    );
    return response;
  }
}
