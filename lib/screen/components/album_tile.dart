import 'package:flutter/material.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/model/album/album_model.dart';
import 'package:flutter_application_1/model/album/album_model_list.dart';
import 'package:flutter_application_1/screen/dashboard.dart';

extension AlbumTile on Dashboard {
  Widget buildAlbumTileList(AlbumModelList? albumModelList,
      {required Function(String albumId) onAlbumClicked}) {
    int albumListSize =
        (albumModelList != null ? albumModelList.albums.length : 0);

    return Column(children: [
      Container(
        margin: const EdgeInsets.only(left: 8.0, top: 0.0, right: 16.0),
        height: 50,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                margin: const EdgeInsets.only(left: 8.0, top: 8.0),
                height: 50,
                width: 150,
                child: const Text("Albums",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
          height: 350,
          child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: albumListSize,
              itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: SizedBox(
                      width: 250,
                      height: 330,
                      child: ListView(
                        children: <Widget>[
                          _buildAlbumTile(albumModelList!.albums[index],
                              onAlbumClicked: (albumId) {
                            onAlbumClicked(albumId);
                          })
                        ],
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  )))
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
                            margin: const EdgeInsets.only(left: 8.0, top: 8.0),
                            height: 20,
                            width: 20,
                            child: Assets.images.spotifyGray.image()
                          ),
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
