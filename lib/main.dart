import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/route/route.dart';
// import 'package:flutter_application_1/screen/splash.dart';
import 'package:flutter_application_1/src/application/config/di/di.dart';

void main() {
  setup();

  runApp(const SpotifyMockApp());
}

class SpotifyMockApp extends StatelessWidget {
  const SpotifyMockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromARGB(255, 4, 4, 4)),
      initialRoute: "/", // no definition since splash screen is cased to default
      onGenerateRoute: routes,
    );
  }
}
