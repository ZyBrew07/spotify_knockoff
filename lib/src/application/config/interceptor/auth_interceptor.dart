import 'package:dio/dio.dart';
import 'package:flutter_application_1/src/application/config/environment/env.dart';
 
Map<String, dynamic> map = {
    "grant_type": "client_credentials",
    "client_id": SpotifyEnv.spotifyClientId,
    "client_secret": SpotifyEnv.spotifySecretId,
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
 