import 'package:envied/envied.dart';
part 'env.g.dart';

@Envied(path: '.env')
abstract class SpotifyEnv {
  @EnviedField(varName: 'access_token_pref_key')
  static String spotifyUserAccessTokenPrefKey =
      _SpotifyEnv.spotifyUserAccessTokenPrefKey;

  @EnviedField(varName: 'client_id')
  static String spotifyClientId = _SpotifyEnv.spotifyClientId;

  @EnviedField(varName: 'secret_key')
  static String spotifySecretId = _SpotifyEnv.spotifySecretId;

  @EnviedField(varName: 'base_url')
  static String spotifyBaseUrl = _SpotifyEnv.spotifyBaseUrl;

  @EnviedField(varName: 'artist_ids')
  static String artistIds = _SpotifyEnv.artistIds;

  @EnviedField(varName: 'album_ids')
  static String albumIds = _SpotifyEnv.albumIds;
}
