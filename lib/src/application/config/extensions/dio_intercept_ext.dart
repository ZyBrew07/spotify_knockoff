
import 'package:dio/dio.dart';
import 'package:flutter_application_1/src/application/config/network/interceptor/api_interceptor.dart';
import 'package:flutter_application_1/src/application/config/network/interceptor/auth_interceptor.dart';
import 'package:flutter_application_1/src/application/config/di/di.dart';

extension DioInterceptExt on Dio {

  void addAuthInterceptor() {
    interceptors.add(dependencyLocator<DioAuthInterceptor>());
  }

  void addApiInterceptor() {
    interceptors.remove(dependencyLocator.call<DioAuthInterceptor>);
    interceptors.add(dependencyLocator<ApiInterceptor>());
  }

  void addLogInterceptor() {
    interceptors.add(LogInterceptor());
  }
}