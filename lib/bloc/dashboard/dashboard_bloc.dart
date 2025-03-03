import "package:bloc/bloc.dart";
import "package:flutter/foundation.dart";
import "package:flutter_application_1/model/album/album_model_list.dart";
import "package:flutter_application_1/model/artist/artist_model_list.dart";
import "package:flutter_application_1/model/categories/category_list_wrapper.dart";
import "package:flutter_application_1/repository/spotify_repository.dart";
import "package:flutter_application_1/utilities/environment.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part 'dashboard_bloc.freezed.dart';
part 'dashboard_state.dart';
part 'dashboard_event.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState>{
  
  final SpotifyRepository repo;

  DashboardBloc({
    required this.repo
  }) : super (const DashboardState(
       artistModelList: null, 
       albumModelList: null,
       categories: null
    )){
    on<_Initialize>(_getHomeScreenItems);
  }

  Future<void> _getHomeScreenItems(
    _Initialize e,
    Emitter<DashboardState> emit,
  ) async {
    
    final ArtistModelList artistList = await repo.getArtists(Environment.artis_ids);
    final AlbumModelList albumModelList = await repo.getAlbums(Environment.album_ids);
    final CategoryListWrapper categoryListWrapper = await repo.getHomeScreenCategories();

    emit(state.copyWith(
      artistModelList: artistList,
      albumModelList: albumModelList,
      categories: categoryListWrapper
      ));
  }
}