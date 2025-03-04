import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/screen/artist_screen.dart';
import 'package:flutter_application_1/src/presentation/screen/dashboard.dart';
import 'package:flutter_application_1/src/presentation/screen/more_categories.dart';
import 'package:flutter_application_1/src/presentation/screen/splash.dart';

Route<dynamic> routes(RouteSettings settings) {
  final args = settings.arguments;
  final name = settings.name;

  switch (name) {
    case '/dashboard':
      return MaterialPageRoute(builder: (_) => const Dashboard());
    case '/artist':
      return MaterialPageRoute(builder: (_) => const ArtistScreen(), settings: settings);
    case '/more_categories':
      return MaterialPageRoute(builder: (_) => const MoreCategories());
    default:
      return MaterialPageRoute(builder: (_) => const SplashScreen());
  }
}
