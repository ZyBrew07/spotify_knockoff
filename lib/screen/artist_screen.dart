import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/artist/artist_bloc.dart';
import 'package:flutter_application_1/model/artist/artist_model.dart';
import 'package:flutter_application_1/model/artist/tracks/track_album_model.dart';
import 'package:flutter_application_1/model/artist/tracks/track_list_wrapper.dart';
import 'package:flutter_application_1/model/artist/tracks/track_model_wrapper.dart';
import 'package:flutter_application_1/screen/args/selected_artist_args.dart';
import 'package:flutter_application_1/utilities/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArtistScreenState extends State<ArtistScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as SelectedArtistArgs;

    double iconSize = 25;

    return SafeArea(
      child: Scaffold(
          body: BlocProvider(
        create: (context) => dependencyLocator<ArtistBloc>()
          ..add(ArtistEvent.initialize(args.artistId)),
        child: BlocBuilder<ArtistBloc, ArtistState>(
          builder: (context, state) {
            TrackListWrapper? trackListWrapper = state.trackListWrapper;
            List<TrackModelWrapper>? tracks = trackListWrapper?.tracks;
            ArtistModel? artist = state.artist;
            int trackSize = tracks != null ? tracks.length : 0;

            return NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    expandedHeight: 400.0,
                    floating: false,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        title: const Text(''),
                        background: artist != null
                            ? Image.network(
                                artist.images[0].url,
                                fit: BoxFit.cover,
                              )
                            : Container(color: Colors.black)),
                  ),
                ];
              },
              body: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
                  child: ListView(
                    children: [
                      const Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                              "The most interesting tracks in the current world of pop music",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Color(0xff969696),
                              ))),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: iconSize,
                          height: iconSize,
                          child: Image.asset('assets/images/spotify.png'),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Expanded(
                              flex: 2,
                              child: SizedBox(
                                  height: 70,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Icon(
                                          size: iconSize,
                                          Icons.add_circle_outline,
                                          color: const Color(0xff969696),
                                        ),
                                      ),
                                      const SizedBox(width: 25),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Icon(
                                          size: iconSize,
                                          Icons.download_for_offline_outlined,
                                          color: const Color(0xff969696),
                                        ),
                                      ),
                                      const SizedBox(width: 25),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Icon(
                                          size: iconSize,
                                          Icons.share,
                                          color: const Color(0xff969696),
                                        ),
                                      ),
                                      const SizedBox(width: 25),
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Icon(
                                          size: 35,
                                          Icons.more_vert_outlined,
                                          color: Color(0xff969696),
                                        ),
                                      ),
                                    ],
                                  ))),
                          Expanded(
                              child: SizedBox(
                                  height: 70,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional.center,
                                        child: Icon(
                                          size: iconSize,
                                          Icons.share,
                                          color: const Color(0xff969696),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      const Align(
                                        alignment:
                                            AlignmentDirectional.centerEnd,
                                        child: Icon(
                                          size: 60,
                                          Icons.play_circle_fill_rounded,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  ))),
                        ],
                      ),
                      ...?tracks?.map((trackModel) {
                        return _buildArtistMusicItems(trackModel.album,
                            onTrackClicked: (trackAlbumModel) {
                          BlocProvider.of<ArtistBloc>(context).add(ArtistEvent.setFavorite(trackAlbumModel));
                        });
                      })
                    ],
                  )),
            );
          },
        ),
      )),
    );
  }
}

class ArtistScreen extends StatefulWidget {
  const ArtistScreen({super.key});

  @override
  createState() => ArtistScreenState();
}

extension ArtistTrack on ArtistScreenState {
  Widget _buildArtistMusicItems(TrackAlbumModel trackAlbumModel,
      {required Function(TrackAlbumModel trackAlbumModel) onTrackClicked}) {
    double itemHeight = 100;

    return Column(children: [
      SizedBox(
          height: itemHeight,
          width: double.infinity,
          child: Row(children: [
            Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    alignment: FractionalOffset.center,
                    image: NetworkImage(trackAlbumModel.images[0].url),
                  )),
                )),
            Expanded(
                flex: 7,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: 50,
                            width: 200,
                            child: Text(trackAlbumModel.name,
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.white)),
                          )),
                    ),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Expanded(
                              flex: 1,
                              child: Container(
                                color: const Color(0xff969696),
                                height: 20,
                                width: 50,
                                child: const Text(
                                  "LYRICS",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )),
                        ),
                        const Expanded(
                            flex: 1,
                            child: SizedBox(
                              height: 50,
                              width: 50,
                            )),
                      ],
                    )
                  ],
                )),
            Expanded(
                flex: 1,
                child: SizedBox(
                  height: itemHeight,
                  child: Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          onTrackClicked(trackAlbumModel);
                        },
                        child: Icon(
                          size: 25,
                          Icons.favorite,
                          color: (trackAlbumModel.isFavorite ?? false)
                              ? Colors.red
                              : const Color(0xff969696),
                        ),
                      )),
                )),
            Expanded(
                flex: 1,
                child: SizedBox(
                  height: itemHeight,
                  child: const Align(
                    alignment: Alignment.center,
                    child: Icon(
                      size: 35,
                      Icons.more_vert_outlined,
                      color: Color(0xff969696),
                    ),
                  ),
                )),
          ])),
      const SizedBox(height: 20)
    ]);
  }
}
