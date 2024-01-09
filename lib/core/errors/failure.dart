import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection time out with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send time out with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recieve time out with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Your request is canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('Network connection error');
      case DioExceptionType.unknown:
        return ServerFailure('unKnown Error');
      default:
        return ServerFailure('Opps , unExcepected error');
    }
  }

  factory ServerFailure.fromBadResponse(
      int statusCode, Map<String, dynamic> errData) {
    if (statusCode == 404) {
      return ServerFailure('Not found');
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errData['error']['message']);
    } else {
      return ServerFailure('Unknown bad response');
    }
  }
}
