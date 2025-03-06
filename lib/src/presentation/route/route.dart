import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/screen/artist_screen.dart';
import 'package:flutter_application_1/src/presentation/screen/dashboard_screen.dart';
import 'package:flutter_application_1/src/presentation/screen/more_categories_screen.dart';
import 'package:flutter_application_1/src/presentation/screen/splash_screen.dart';

Route<dynamic> routes(RouteSettings settings) {
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
