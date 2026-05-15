import 'dart:io';

import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was cancelled');
      case DioExceptionType.unknown:
        if (dioException.error is SocketException) {
          return ServerFailure('No Internet Connection');
        } else {
          return ServerFailure('Unexpected error occurred');
        }

      case DioExceptionType.badCertificate:
        throw UnimplementedError();
      case DioExceptionType.connectionError:
        throw UnimplementedError();
    }
  }

  static ServerFailure fromResponse(int statusCode, dynamic data) {
    return ServerFailure('Error: $statusCode - ${data['error']['message']}');
  }
}
