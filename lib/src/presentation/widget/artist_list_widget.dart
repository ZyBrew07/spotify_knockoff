import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/application/config/gen/assets.gen.dart';
import 'package:flutter_application_1/src/domain/model/artist/artist_model.dart';
import 'package:flutter_application_1/src/domain/model/artist/artist_model_list.dart';
import 'package:flutter_application_1/src/presentation/widget/list_title_widget.dart';
import 'package:flutter_application_1/src/presentation/widget/list_widget.dart';

class ArtistListWidget extends StatelessWidget {
  final ArtistModelList? artistModelList;
  final Function(String artistName, String artistId) onArtistClicked;

  const ArtistListWidget(
      {super.key, this.artistModelList, required this.onArtistClicked});

  @override
  Widget build(BuildContext context) {
    int artistListSize =
        (artistModelList != null ? artistModelList!.artists.length : 0);

    return Column(children: [
      const ListTitleWidget(title: "Artist"),
      ListWidget(
          listSize: artistListSize,
          onChildrenLayout: (index) {
            return _buildArtistTile(artistModelList!.artists[index],
                onArtistClicked: (artistName, artistId) {
              onArtistClicked(artistName, artistId);
            });
          }),
    ]);
    // return ArtistTileWidget(artistModelList: ArtistModelList(artists: []),  onArtistClicked: (artistName, artistId) {});
  }
}

Widget _buildArtistTile(ArtistModel artist,
    {required Function(String artistName, String artistId) onArtistClicked}) {
  return GestureDetector(
      onTap: () {
        onArtistClicked(artist.name, artist.id);
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
                          child: Text(artist.name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 23.0,
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
                              child: Assets.images.spotify.image()),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: 180,
                      width: double.infinity,
                      color: Colors.green,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          fit: BoxFit.cover,
                          alignment: FractionalOffset.center,
                          image: NetworkImage(artist.images[0].url),
                        )),
                      )),
                  Container(
                    height: 70,
                    width: double.infinity,
                    color: Colors.black,
                    child: Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Center(
                        child: Text(artist.genres.join(", "),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16.0,
                              color: Colors.white70,
                            )),
                      ),
                    ),
                  ),
                ],
              ))));
}
