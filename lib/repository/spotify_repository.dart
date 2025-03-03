import 'package:flutter_application_1/model/album/album_model_list.dart';
import 'package:flutter_application_1/model/artist/artist_model.dart';
import 'package:flutter_application_1/model/artist/artist_model_list.dart';
import 'package:flutter_application_1/model/artist/tracks/track_list_wrapper.dart';
import 'package:flutter_application_1/model/categories/category_list_wrapper.dart';
import 'package:flutter_application_1/model/token_model.dart';

abstract class SpotifyRepository {

    Future<TokenModel> getAccessToken(); 
    Future<void> cacheToken(TokenModel token);
    Future<ArtistModelList> getArtists(String ids);
    Future<AlbumModelList> getAlbums(String ids);
    Future<CategoryListWrapper> getHomeScreenCategories();
    Future<CategoryListWrapper> getMoreCategories();
    Future<TrackListWrapper> getArtistTopTracks(String id);
    Future<ArtistModel> getArtist(String artistId);
}