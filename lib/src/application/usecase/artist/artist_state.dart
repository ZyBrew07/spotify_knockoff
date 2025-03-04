part of 'artist_bloc.dart';

@freezed
class ArtistState with _$ArtistState {
   const factory ArtistState({
     required TrackListWrapper? trackListWrapper,
     required ArtistModel? artist,
  }) = _ArtistState;
}