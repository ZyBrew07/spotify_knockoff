import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/src/application/usecase/dashboard/dashboard_bloc.dart';
import 'package:flutter_application_1/src/domain/model/album/album_model_list.dart';
import 'package:flutter_application_1/src/domain/model/artist/artist_model_list.dart';
import 'package:flutter_application_1/src/domain/model/categories/category_list_wrapper.dart';
import 'package:flutter_application_1/src/presentation/args/selected_artist_args.dart';
import 'package:flutter_application_1/src/presentation/widget/album_list_widget.dart';
import 'package:flutter_application_1/src/presentation/widget/artist_list_widget.dart';
import 'package:flutter_application_1/src/presentation/widget/favorite_list_widget.dart';
import 'package:flutter_application_1/src/application/config/di/di.dart';
import 'package:flutter_application_1/src/presentation/widget/category_list_widget.dart';
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
          final box = Hive.box('workoutBox');

          return SingleChildScrollView(
              child: Column(children: [
            SizedBox(
                height: 500,
                child: ArtistListWidget(
                    artistModelList: artistModelList,
                    onArtistClicked: (artistName, artistId) {
                      Navigator.pushNamed(context, "/artist",
                          arguments: SelectedArtistArgs(artistName, artistId));
                    })),
            SizedBox(
                height: 500,
                child: AlbumListWidget(
                  albumModelList: albumModelList,
                  onAlbumClicked: (albumId) {},
                )),
            SizedBox(
                height: 500,
                child: CategoryListWidget(
                  categoryList: categoryListWrapper?.categories,
                  showAll: () {
                    Navigator.pushNamed(context, "/more_categories");
                  },
                  onCategoryClicked: (categoryId) {},
                )
            ),
            if (box.isEmpty)
              const SizedBox(height: 0)
            else
              SizedBox(height: 500, child: FavoriteListWidget(box: box))
          ]));
        },
      ),
    ));
  }
}
