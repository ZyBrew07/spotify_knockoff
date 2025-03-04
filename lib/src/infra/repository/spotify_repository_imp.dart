import 'package:dio/dio.dart';
import 'package:flutter_application_1/src/domain/model/album/album_model_list.dart';
import 'package:flutter_application_1/src/domain/model/artist/artist_model.dart';
import 'package:flutter_application_1/src/domain/model/artist/artist_model_list.dart';
import 'package:flutter_application_1/src/domain/model/artist/tracks/track_list_wrapper.dart';
import 'package:flutter_application_1/src/domain/model/categories/category_list_wrapper.dart';
import 'package:flutter_application_1/src/domain/model/user/token_model.dart';
import 'package:flutter_application_1/src/infra/server/spotify_client.dart';
import 'package:flutter_application_1/src/infra/server/user_client.dart';
import 'package:flutter_application_1/src/infra/repository/spotify_repository.dart';
import 'package:flutter_application_1/src/application/config/di/di.dart';
import 'package:flutter_application_1/src/application/config/environment/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpotifyRepositoryImp extends SpotifyRepository {
  final UserClient userClient;
  final SpotifyClient spotifyClient;

  SpotifyRepositoryImp({required this.userClient, required this.spotifyClient});

  @override
  Future<TokenModel> getAccessToken() async {
    try {
      final TokenModel token = await userClient.getAccessToken();
      return token;
    } on DioException {
      return TokenModel(access_token: "");
    }
  }

  @override
  Future<void> cacheToken(TokenModel token) async {
    SharedPreferences pref =
        await dependencyLocator.getAsync<SharedPreferences>();
    pref.setString(SpotifyEnv.spotifyUserAccessTokenPrefKey,
        token.access_token != null ? token.access_token! : "");
  }

  @override
  Future<ArtistModelList> getArtists(String ids) async {
    try {
      final ArtistModelList artistModelList =
          await spotifyClient.getArtists(ids);
      return artistModelList;
    } on DioException {
      throw Exception("Unable to fetch artists.");
    }
  }

  @override
  Future<AlbumModelList> getAlbums(String ids) async {
    try {
      final AlbumModelList albumModelList = await spotifyClient.getAlbums(ids);
      return albumModelList;
    } on DioException {
      throw Exception("Unable to fetch albums.");
    }
  }

  @override
  Future<CategoryListWrapper> getHomeScreenCategories() async {
    try {
      final CategoryListWrapper categoryListWrapper =
          await spotifyClient.getHomeScreenCategories(8);
      return categoryListWrapper;
    } on DioException {
      throw Exception("Unable to fetch albums.");
    }
  }

  @override
  Future<CategoryListWrapper> getMoreCategories() async {
    try {
      final CategoryListWrapper categoryListWrapper =
          await spotifyClient.getHomeScreenCategories(20);
      return categoryListWrapper;
    } on DioException {
      throw Exception("Unable to fetch albums.");
    }
  }

  @override
  Future<TrackListWrapper> getArtistTopTracks(String id) async {

    try {
      final TrackListWrapper trackListWrapper =
          await spotifyClient.getArtistTopTracks(id);
      return trackListWrapper;
    } on DioException {
      throw Exception("Unable to fetch artist tracks.");
    }
  }

  @override
  Future<ArtistModel> getArtist(String artistId) async {
    try {
      final ArtistModel artistModel =
          await spotifyClient.getArtist(artistId);
      return artistModel;
    } on DioException {
      throw Exception("Unable to fetch artist.");
    }
  }
}
