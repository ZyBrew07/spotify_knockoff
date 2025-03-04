import 'package:dio/dio.dart';
import 'package:flutter_application_1/src/application/config/di/di.dart';
import 'package:flutter_application_1/src/application/config/environment/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiInterceptor extends QueuedInterceptor {
  @override
  Future<void> onRequest(
    RequestOptions options, RequestInterceptorHandler handler) async {
    
    SharedPreferences pref = await dependencyLocator.getAsync<SharedPreferences>();
    String? token = pref.getString(SpotifyEnv.spotifyUserAccessTokenPrefKey);
 
    if (token!.isNotEmpty) {
      options.headers['Authorization'] = "Bearer ${token.trim()}";
      options.data = <String, dynamic>{};
    }
    
    super.onRequest(options, handler);
  }
 
  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
        
        print(err.message);
  }
}