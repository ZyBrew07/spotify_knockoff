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
import 'package:dart_either/dart_either.dart';

class SpotifyRepositoryImp extends SpotifyRepository {
  final UserClient userClient;
  final SpotifyClient spotifyClient;

  SpotifyRepositoryImp({required this.userClient, required this.spotifyClient});

  @override
  Future<TokenModel> getAccessToken() async {
    Either<TokenModel, TokenModel> eitherFuture =
        await Either.catchFutureError<TokenModel, TokenModel>(
            (e, ar) => TokenModel(access_token: ""), () async {
      return await userClient.getAccessToken();
    });

    if (eitherFuture.isLeft) {
      throw (eitherFuture as Left).value;
    }

    return (eitherFuture as Right).value;
  }

  @override
  Future<void> cacheToken(TokenModel token) async {

    Either<Exception, bool> eitherFuture =
        await Either.catchFutureError<Exception, bool>(
            (e, ar) => Exception("Unable to fetch artists."), () async {
      return (await dependencyLocator.getAsync<SharedPreferences>()).setString(SpotifyEnv.spotifyUserAccessTokenPrefKey,
        token.access_token != null ? token.access_token! : "");
    });

    if (eitherFuture.isLeft) {
      throw (eitherFuture as Left).value;
    }
  }

  @override
  Future<ArtistModelList> getArtists(String ids) async {
    Either<Exception, ArtistModelList> eitherFuture =
        await Either.catchFutureError<Exception, ArtistModelList>(
            (e, ar) => Exception("Unable to fetch artists."), () async {
      return await spotifyClient.getArtists(ids);
    });

    if (eitherFuture.isLeft) {
      throw (eitherFuture as Left).value;
    }

    return (eitherFuture as Right).value;
  }

  @override
  Future<AlbumModelList> getAlbums(String ids) async {
    Either<Exception, AlbumModelList> eitherFuture =
        await Either.catchFutureError<Exception, AlbumModelList>(
            (e, ar) => Exception("Unable to fetch albums."), () async {
      return await spotifyClient.getAlbums(ids);
    });

    if (eitherFuture.isLeft) {
      throw (eitherFuture as Left).value;
    }

    return (eitherFuture as Right).value;
  }

  @override
  Future<CategoryListWrapper> getHomeScreenCategories() async {
    Either<Exception, CategoryListWrapper> eitherFuture =
        await Either.catchFutureError<Exception, CategoryListWrapper>(
            (e, ar) => Exception("Unable to fetch categories."), () async {
      return await spotifyClient.getHomeScreenCategories(8);
    });

    if (eitherFuture.isLeft) {
      throw (eitherFuture as Left).value;
    }

    return (eitherFuture as Right).value;
  }

  @override
  Future<CategoryListWrapper> getMoreCategories() async {
    Either<Exception, CategoryListWrapper> eitherFuture =
        await Either.catchFutureError<Exception, CategoryListWrapper>(
            (e, ar) => Exception("Unable to fetch categories."), () async {
      return await spotifyClient.getHomeScreenCategories(20);
    });

    if (eitherFuture.isLeft) {
      throw (eitherFuture as Left).value;
    }

    return (eitherFuture as Right).value;
  }

  @override
  Future<TrackListWrapper> getArtistTopTracks(String id) async {
    Either<Exception, TrackListWrapper> eitherFuture =
        await Either.catchFutureError<Exception, TrackListWrapper>(
            (e, ar) => Exception("Unable to fetch artist tracks."), () async {
      return await spotifyClient.getArtistTopTracks(id);
    });

    if (eitherFuture.isLeft) {
      throw (eitherFuture as Left).value;
    }

    return (eitherFuture as Right).value;
  }

  @override
  Future<ArtistModel> getArtist(String artistId) async {
    Either<Exception, ArtistModel> eitherFuture =
        await Either.catchFutureError<Exception, ArtistModel>(
            (e, ar) => Exception("Unable to fetch artist tracks."), () async {
      return await spotifyClient.getArtist(artistId);
    });

    if (eitherFuture.isLeft) {
      throw (eitherFuture as Left).value;
    }

    return (eitherFuture as Right).value;
  }
}
