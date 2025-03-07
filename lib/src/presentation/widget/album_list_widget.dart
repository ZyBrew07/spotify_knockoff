import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/application/config/gen/assets.gen.dart';
import 'package:flutter_application_1/src/domain/model/album/album_model.dart';
import 'package:flutter_application_1/src/domain/model/album/album_model_list.dart';
import 'package:flutter_application_1/src/presentation/widget/card_tile_network_image.dart';
import 'package:flutter_application_1/src/presentation/widget/card_title_header.dart';
import 'package:flutter_application_1/src/presentation/widget/list_title_widget.dart';
import 'package:flutter_application_1/src/presentation/widget/list_widget.dart';


class AlbumListWidget extends StatelessWidget {
  final AlbumModelList? albumModelList;
  final Function(String albumId) onAlbumClicked;

  const AlbumListWidget(
      {super.key, this.albumModelList, required this.onAlbumClicked});

  @override
  Widget build(BuildContext context) {
    int albumListSize =
        (albumModelList != null ? albumModelList!.albums.length : 0);

    return Column(children: [
      const ListTitleWidget(title: "Albums"),
      ListWidget(
          listSize: albumListSize,
          onChildrenLayout: (index) {
            return _buildAlbumTile(albumModelList!.albums[index],
                onAlbumClicked: (albumId) {
              onAlbumClicked(albumId);
            });
          })
    ]);
  }
}

Widget _buildAlbumTile(AlbumModel album,
    {required Function(String albumId) onAlbumClicked}) {
  return GestureDetector(
      onTap: () {
        onAlbumClicked(album.id);
      },
      child: Card(
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
                      text: album.name,
                      fontSize: 20.0,
                      height: 80),
                  CardTileNetworkImage(height: 250, url: album.images[0].url)
                ],
              ))));
}
