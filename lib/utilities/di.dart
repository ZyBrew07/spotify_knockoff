

import 'package:dio/dio.dart';
import 'package:flutter_application_1/bloc/artist/artist_bloc.dart';
import 'package:flutter_application_1/bloc/dashboard/dashboard_bloc.dart';
import 'package:flutter_application_1/bloc/more_categories/more_categories_bloc.dart';
import 'package:flutter_application_1/bloc/user_session_bloc.dart';
import 'package:flutter_application_1/extensions/dio_intercept_ext.dart';
import 'package:flutter_application_1/interceptor/api_interceptor.dart';
import 'package:flutter_application_1/interceptor/auth_interceptor.dart';
import 'package:flutter_application_1/model/artist/tracks/track_album_model.dart';
import 'package:flutter_application_1/repository/spotify_client.dart';
import 'package:flutter_application_1/repository/user_client.dart';
import 'package:flutter_application_1/repository/spotify_repository.dart';
import 'package:flutter_application_1/repository/spotify_repository_imp.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'injectables.dart';

final dependencyLocator = GetIt.instance;
 
void setup() async {

  await Future.wait([
    serviceInjectables(dependencyLocator),
  ]);

  Hive
  ..init((await getExternalStorageDirectory())?.path)
  ..registerAdapter(TrackAlbumModelAdapter());
  await Hive.openBox('workoutBox'); 
}