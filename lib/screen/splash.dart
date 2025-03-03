
import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/user_session_bloc.dart';
import 'package:flutter_application_1/utilities/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocProvider(
        create: (context) => dependencyLocator<UserSessionBloc>()
        ..add(const UserSessionEvent.retreiveAccessToken()),
        child: BlocListener<UserSessionBloc, UserSessionState>(
          listener: (context, state)  {
              state.whenOrNull (
                failed: () => Navigator.popAndPushNamed(context, "/"),
                loaded: () => Navigator.popAndPushNamed(context, "/dashboard")
              );
          },
          child: const Center(
            child: Placeholder(),
          ),
        ),
      )
    );
  }
}