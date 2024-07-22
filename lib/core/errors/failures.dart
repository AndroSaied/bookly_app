import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  const Failures(this.errMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch(dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("ConnectionTimeout with ApiServer.");
      case DioExceptionType.sendTimeout:
        return ServerFailure("SendTimeout with ApiServer.");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("ReceiveTimeout with ApiServer.");
      case DioExceptionType.badCertificate:
        return ServerFailure("BadCertificate with ApiServer.");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioException.response!.statusCode!, dioException.response);
      case DioExceptionType.cancel:
        return ServerFailure("Request to ApiServer was Canceled.");
      case DioExceptionType.connectionError:
        return ServerFailure("There was ConnectionError, please check internet connection and try again!");
      case DioExceptionType.unknown:
        if(dioException.message!.contains("SocketException")) {
          return ServerFailure("No internet connection.");
        }
        return ServerFailure("Unknown Error, please try later");
      default:
        return ServerFailure("OOPS There was an error, please try again!");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode >= 400 && statusCode < 404) {
      return ServerFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure("Your request not found, please try later!");
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server Error, please try later!");
    } else {
      return ServerFailure("OOPS There was an error, please try again!");
    }
  }
}