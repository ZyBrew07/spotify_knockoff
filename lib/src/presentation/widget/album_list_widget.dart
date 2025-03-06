import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/application/config/gen/assets.gen.dart';
import 'package:flutter_application_1/src/domain/model/album/album_model.dart';
import 'package:flutter_application_1/src/domain/model/album/album_model_list.dart';
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
                  Container(
                    height: 80,
                    width: double.infinity,
                    color: Colors.white,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Center(
                          child: Text(album.name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                              margin:
                                  const EdgeInsets.only(left: 8.0, top: 8.0),
                              height: 20,
                              width: 20,
                              child: Assets.images.spotifyGray.image()),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: 250,
                      width: double.infinity,
                      color: Colors.green,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          fit: BoxFit.cover,
                          alignment: FractionalOffset.center,
                          image: NetworkImage(album.images[0].url),
                        )),
                      )),
                ],
              ))));
}
