import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/application/config/gen/assets.gen.dart';
import 'package:flutter_application_1/src/domain/model/artist/artist_model.dart';
import 'package:flutter_application_1/src/domain/model/artist/artist_model_list.dart';
import 'package:flutter_application_1/src/presentation/widget/card_tile_network_image.dart';
import 'package:flutter_application_1/src/presentation/widget/card_title_header.dart';
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
                  CardTitleHeader(
                    image: Assets.images.spotify.image(),
                    text: artist.name,
                    fontSize: 23.0,
                    height: 80
                  ),
                  CardTileNetworkImage(height: 180, url: artist.images[0].url),
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
