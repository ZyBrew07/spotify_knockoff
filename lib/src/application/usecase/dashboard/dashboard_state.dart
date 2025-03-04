part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
   const factory DashboardState({
     required ArtistModelList? artistModelList,
     required AlbumModelList? albumModelList,
     required CategoryListWrapper? categories,
  }) = _DashboardState;
}