import 'package:flutter/material.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/model/artist/tracks/track_album_model.dart';
import 'package:flutter_application_1/screen/dashboard.dart';
import 'package:hive/hive.dart';

extension CategoryTile on Dashboard {
  Widget buildFavoriteTileList(Box box) {

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
                child: const Text("Favorites",
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
              itemCount: box.length,
              itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: SizedBox(
                      width: 250,
                      height: 330,
                      child: ListView(
                        children: <Widget>[buildFavoriteTile(box.getAt(index))],
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  )))
    ]);
  }
}

Widget buildFavoriteTile(TrackAlbumModel model) {
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
              Container(
                height: 80,
                width: double.infinity,
                color: Colors.white,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Center(
                      child: Text(model.name,
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
                      image: NetworkImage(model.defaultImage ?? model.images[0].url),
                    )),
                  )),
            ],
          )));
}
