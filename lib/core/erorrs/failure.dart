// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMassage;
  const Failure({required this.errorMassage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMassage});

  factory ServerFailure.fromDioException(DioException dioexp) {
    switch (dioexp.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          errorMassage: 'Connection timeout with ApiServer',
        );
      case DioExceptionType.sendTimeout:
        return ServerFailure(
          errorMassage: 'Send timeout with ApiServer',
        );
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          errorMassage: 'Receive timeout with ApiServer',
        );
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioexp.response!.statusCode,
          dioexp.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(
          errorMassage: 'Request to ApiServer was canceld',
        );
      case DioExceptionType.unknown:
        if (dioexp.message!.contains('SocketException')) {
          return ServerFailure(
            errorMassage: 'No Internet Connection',
          );
        }
        return ServerFailure(
          errorMassage: 'Unexpected Error, Please try again!',
        );
      default:
        return ServerFailure(
          errorMassage:
              'Opps There was an Error, Please try again',
        );
    }
  }

  factory ServerFailure.fromResponse(
    int? statusCode,
    dynamic response,
  ) {
    if (statusCode == 400 ||
        statusCode == 401 ||
        statusCode == 403) {
      return ServerFailure(
        errorMassage: response['error']['message'],
      );
    } else if (statusCode == 404) {
      return ServerFailure(
        errorMassage:
            'Your request not found, Please try later!',
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        errorMassage: 'Internal Server error, Please try later',
      );
    } else {
      return ServerFailure(
        errorMassage:
            'Opps There was an Error, Please try again',
      );
    }
  }
}
