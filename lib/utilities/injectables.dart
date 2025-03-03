part of 'di.dart';

Future<void> serviceInjectables(GetIt serviceLocator) async {
  serviceLocator.registerFactory(() => Dio());
  serviceLocator.registerLazySingletonAsync(
      () async => await SharedPreferences.getInstance());

  //Dio Interceptors
  serviceLocator.registerLazySingleton(() => DioAuthInterceptor());

  serviceLocator.registerLazySingleton(() => ApiInterceptor());

  serviceLocator.registerLazySingleton<UserClient>(
      () => UserClient(serviceLocator<Dio>()..addAuthInterceptor()));

  serviceLocator.registerLazySingleton<SpotifyClient>(
      () => SpotifyClient(serviceLocator<Dio>()
        ..addApiInterceptor()
        ..addLogInterceptor()));

  serviceLocator.registerLazySingleton<SpotifyRepository>(
    () => SpotifyRepositoryImp(
        userClient: serviceLocator<UserClient>(),
        spotifyClient: serviceLocator<SpotifyClient>()),
  );

// INJECTION (BLOC)
  serviceLocator.registerFactory(
      () => UserSessionBloc(repo: serviceLocator<SpotifyRepository>()));

  serviceLocator.registerFactory(
      () => DashboardBloc(repo: serviceLocator<SpotifyRepository>()));

  serviceLocator.registerFactory(
      () => MoreCategoriesBloc(repo: serviceLocator<SpotifyRepository>()));

  serviceLocator.registerFactory(
      () => ArtistBloc(repo: serviceLocator<SpotifyRepository>()));
}
