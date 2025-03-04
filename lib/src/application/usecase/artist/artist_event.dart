part of 'artist_bloc.dart';

@freezed
class ArtistEvent with _$ArtistEvent {
   const factory ArtistEvent.initialize(String id) = _Initialize;
   const factory ArtistEvent.setFavorite(TrackAlbumModel model) = _IsFavorite;
}