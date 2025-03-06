import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/application/config/gen/assets.gen.dart';
import 'package:flutter_application_1/src/domain/model/artist/tracks/track_album_model.dart';
import 'package:flutter_application_1/src/presentation/widget/card_tile_network_image.dart';
import 'package:flutter_application_1/src/presentation/widget/card_title_header.dart';
import 'package:flutter_application_1/src/presentation/widget/list_title_widget.dart';
import 'package:flutter_application_1/src/presentation/widget/list_widget.dart';
import 'package:hive/hive.dart';

class FavoriteListWidget extends StatelessWidget {
  final Box? box;

  const FavoriteListWidget({super.key, this.box});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const ListTitleWidget(title: "Favorites"),
      ListWidget(
          listSize: box?.length != null ? box!.length : 0,
          onChildrenLayout: (index) {
            return _buildFavoriteTile(box?.getAt(index));
          }),
    ]);
  }
}

Widget _buildFavoriteTile(TrackAlbumModel model) {
  return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: SizedBox(
          width: 250,
          height: 330,
          child: Column(
            children: [
              CardTitleHeader(
                  image: Assets.images.spotifyGray.image(),
                  text: model.name,
                  fontSize: 20.0,
                  height: 80),
              CardTileNetworkImage(
                  height: 250, url: model.defaultImage ?? model.images[0].url),
            ],
          )));
}
