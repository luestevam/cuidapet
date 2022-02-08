import 'package:cuidapetmobile/app/core/rest_client/rest_client_response.dart';

abstract class RestClient {
  RestClient auth();
  RestClient unaunth();

  Future<RestClientResponse<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
  });
  Future<RestClientResponse<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
  });
  Future<RestClientResponse<T>> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
  });
  Future<RestClientResponse<T>> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
  });
  Future<RestClientResponse<T>> patch<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
  });

  Future<RestClientResponse<T>> resquest<T>(
    String path, {
    dynamic data,
    required String method,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
  });
}
