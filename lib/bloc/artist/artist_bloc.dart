import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/model/artist/artist_model.dart';
import 'package:flutter_application_1/model/artist/tracks/track_album_model.dart';
import 'package:flutter_application_1/model/artist/tracks/track_list_wrapper.dart';
import 'package:flutter_application_1/model/artist/tracks/track_model_wrapper.dart';
import 'package:flutter_application_1/repository/spotify_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'artist_bloc.freezed.dart';
part 'artist_state.dart';
part 'artist_event.dart';

class ArtistBloc extends Bloc<ArtistEvent, ArtistState> {
  final SpotifyRepository repo;
  late Box box;
  ArtistBloc({required this.repo})
      : super(const ArtistState(
          trackListWrapper: null,
          artist: null,
        )) {
    box = Hive.box('workoutBox');

    on<_Initialize>(_getArtistTopTracks);
    on<_IsFavorite>(_setIsFavorite);
  }

  Future<void> _getArtistTopTracks(
    _Initialize e,
    Emitter<ArtistState> emit,
  ) async {
    final TrackListWrapper trackListWrapper =
        await repo.getArtistTopTracks(e.id);

    final ArtistModel artistModel = await repo.getArtist(e.id);

    final TrackListWrapper trackListWrapperCopy = trackListWrapper.copyWith(
        tracks:
            trackListWrapper.tracks?.map<TrackModelWrapper>((albumWrapper) {
      for (int i = 0; i < box.length; i++) {
        TrackAlbumModel boxModel = box.getAt(i);
        if (albumWrapper.album.id == boxModel.id) {
          return albumWrapper.copyWith(
              album: albumWrapper.album.copyWith(isFavorite: true));
        }
      }
      return albumWrapper;
    }).toList());

    emit(state.copyWith(
        trackListWrapper: trackListWrapperCopy, artist: artistModel));
  }

  Future<void> _setIsFavorite(
    _IsFavorite e,
    Emitter<ArtistState> emit,
  ) async {
    emit(state.copyWith(
        trackListWrapper: state.trackListWrapper?.copyWith(
            tracks: state.trackListWrapper!.tracks
                ?.map<TrackModelWrapper>((albumWrapper) {
      if (albumWrapper.album.id == e.model.id) {
        
        if (albumWrapper.album.isFavorite == true) {

          TrackModelWrapper unfavorite = albumWrapper.copyWith(
              album: albumWrapper.album.copyWith(isFavorite: false));

          box.delete(unfavorite.album.id);
          return unfavorite;
        } else {
          TrackModelWrapper favorite = albumWrapper.copyWith(
              album: albumWrapper.album.copyWith(
                  id: albumWrapper.album.id,
                  isFavorite: true,
                  defaultImage: albumWrapper.album.images[0].url));

          box.add(favorite.album);
          return favorite;
        }
      } else {
        return albumWrapper;
      }
    }).toList())));
  }
}
