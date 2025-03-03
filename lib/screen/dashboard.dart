import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/bloc/dashboard/dashboard_bloc.dart';
import 'package:flutter_application_1/model/album/album_model_list.dart';
import 'package:flutter_application_1/model/artist/artist_model_list.dart';
import 'package:flutter_application_1/model/categories/category_list_wrapper.dart';
import 'package:flutter_application_1/screen/args/selected_artist_args.dart';
import 'package:flutter_application_1/screen/components/album_tile.dart';
import 'package:flutter_application_1/screen/components/artist_tile.dart';
import 'package:flutter_application_1/screen/components/category_tile.dart';
import 'package:flutter_application_1/screen/components/favorite_tile.dart';
import 'package:flutter_application_1/utilities/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);

    return Scaffold(
        body: BlocProvider(
      create: (context) => dependencyLocator<DashboardBloc>()
        ..add(const DashboardEvent.initialize()),
      child: BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          ArtistModelList? artistModelList = state.artistModelList;
          AlbumModelList? albumModelList = state.albumModelList;
          CategoryListWrapper? categoryListWrapper = state.categories;
          // Hive.openBox('workoutBox');
          final box = Hive.box('workoutBox');

          return SingleChildScrollView(
              child: Column(children: [
            SizedBox(
                height: 500,
                child: buildArtistTileList(artistModelList,
                    onArtistClicked: (artistName, artistId) {
                  Navigator.pushNamed(context, "/artist",
                      arguments: SelectedArtistArgs(artistName, artistId));
                })),
            SizedBox(
                height: 500,
                child: buildAlbumTileList(albumModelList,
                    onAlbumClicked: (albumId) {})),
            SizedBox(
                height: 500,
                child: buildCategoryTileList(
                    categoryList: categoryListWrapper?.categories,
                    showAll: () {
                      Navigator.pushNamed(context, "/more_categories");
                    },
                    onCategoryClicked: (categoryId) {})),
            if (box.isEmpty)
              const SizedBox(height: 0)
            else
              SizedBox(height: 500, child: buildFavoriteTileList(box))
          ]));
        },
      ),
    ));
  }
}
