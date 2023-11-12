import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);
  factory ServerFailure.fromDioException(DioException dioerror) {
    switch (dioerror.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeOut With API Server");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeOut With API Server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Recive timeOut With API Server");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad Certificate are accure");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioerror.response!.statusCode!, dioerror.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Request To Api Server Was Cancel");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection Error With API Server");
      case DioExceptionType.unknown:
        if (dioerror.message!.contains("SocketException")) {
          return ServerFailure("No Internet Connection");
        } else {
          return ServerFailure("Unexpected Error ");
        }
      default:
        return ServerFailure("Opps There Was An Error ");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure("Your Request Not Found");
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server Error ");
    } else {
      return ServerFailure("Opps There Was An Error  with $statusCode");
    }
  }
}
