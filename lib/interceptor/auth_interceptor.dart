import 'package:dio/dio.dart';
import 'package:flutter_application_1/utilities/environment.dart';
 
Map<String, dynamic> map = {
    "grant_type": "client_credentials",
    "client_id": Environment.client_id,
    "client_secret": Environment.secret_key,
  };
  
class DioAuthInterceptor extends QueuedInterceptor {
  
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['Content-Type'] = "application/x-www-form-urlencoded";
 
    options.data = map;
 
    super.onRequest(options, handler);
  }
 
  @override
  Future<void> onError(
    DioException err, ErrorInterceptorHandler handler) async {
      print(err);
    }
}
 