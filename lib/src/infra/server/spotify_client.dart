import 'package:dio/dio.dart';
import 'package:flutter_application_1/src/domain/model/album/album_model_list.dart';
import 'package:flutter_application_1/src/domain/model/artist/artist_model.dart';
import 'package:flutter_application_1/src/domain/model/artist/artist_model_list.dart';
import 'package:flutter_application_1/src/domain/model/artist/tracks/track_list_wrapper.dart';
import 'package:flutter_application_1/src/domain/model/categories/category_list_wrapper.dart';
import 'package:retrofit/retrofit.dart';

part 'spotify_client.g.dart';

@RestApi(baseUrl: "https://api.spotify.com/v1/")
abstract class SpotifyClient {
  
factory SpotifyClient(Dio dio) = _SpotifyClient;

  @GET('/artists')
  Future<ArtistModelList> getArtists(
    @Query('ids') String ids,
  );

  @GET('/artists/{id}')
  Future<ArtistModel> getArtist(
    @Path('id') String id,
  );

  @GET('/albums')
  Future<AlbumModelList> getAlbums(
    @Query('ids') String ids,
  );

  @GET('/browse/categories?offset=0')
  Future<CategoryListWrapper> getHomeScreenCategories(
     @Query('limit') int limit,
  );

  @GET('/artists/{id}/top-tracks')
  Future<TrackListWrapper> getArtistTopTracks(
    @Path('id') String ids,
  );
}