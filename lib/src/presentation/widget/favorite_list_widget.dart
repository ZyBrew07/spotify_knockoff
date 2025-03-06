import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/application/config/gen/assets.gen.dart';
import 'package:flutter_application_1/src/domain/model/artist/tracks/track_album_model.dart';
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
                      image: NetworkImage(
                          model.defaultImage ?? model.images[0].url),
                    )),
                  )),
            ],
          )));
}
