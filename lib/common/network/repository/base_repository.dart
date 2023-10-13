import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_template/app/app.logger.dart';
import 'package:flutter_template/common/constants/constants.dart';
import 'package:flutter_template/common/constants/strings.dart';
import 'package:flutter_template/common/network/result.dart';

typedef EntityMapper<Entity, Model> = Model Function(Entity entity);

abstract class ErrorCode {
  static const error = "Error";
  static const failed = "Failed";
  static const message = "message";
  static const unauthorized = "unauthorized";
}

abstract class BaseRepository {
  final String endpoint = AppConstants.apiEndpoint;
  final String endpointCrypto = AppConstants.apiEndpointCrypto;

  final Map<String, String> _headers = {
    HttpHeaders.acceptHeader: "application/json",
    HttpHeaders.contentTypeHeader: "application/json",
  };

  final _logger = getLogger('BaseRepository');

  Dio get dio => Dio()..options.headers = _headers;

  Future<Result<ResponseType>> safeCall<RequestType, ResponseType>(
    Future<RequestType> call, {
    EntityMapper<RequestType, ResponseType>? entityMapper,
  }) async {
    try {
      final response = await call;
      _logger.d("Api success message -> $response");
      return Success(
        (entityMapper != null ? entityMapper(response) : response)
            as ResponseType,
      );
    } catch (exception) {
      _logger.e(exception);
      if (exception is DioError) {
        switch (exception.type) {
          case DioErrorType.connectTimeout:
          case DioErrorType.sendTimeout:
          case DioErrorType.receiveTimeout:
          case DioErrorType.cancel:
            _logger.e("Api error message -> ${AppStrings.poorNetworkError}");
            return Error(AppStrings.poorNetworkError);

          case DioErrorType.other:
            _logger.e("Api error message -> ${AppStrings.noNetworkError}");
            return Error(AppStrings.noNetworkError);

          case DioErrorType.response:
            return _getError(exception.response!);
        }
      }
      return Error(AppStrings.genericError);
    }
  }

  Result<T> _getError<T>(Response response) {
    if (response.data != null && response.data is Map<String, dynamic>) {
      final Map<String, dynamic> data = response.data as Map<String, dynamic>;
      if (data.containsKey(ErrorCode.message)) {
        _logger.e("Api error response -> ${response.data.toString()}");
        final errorMessage = data[ErrorCode.message];
        return Error(errorMessage as String);
      }
    }
    return Error(
      AppStrings.genericError,
    );
  }
}
