import 'package:cuidapetmobile/app/core/rest_client/rest_client.dart';

class RestClientResponse<T> {
  final T? data;
  final int? statusCode;
  final String? StatusMessage;

  RestClientResponse({this.data, this.statusCode, this.StatusMessage});
}
