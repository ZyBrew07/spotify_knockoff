import 'package:dio/dio.dart';
import 'package:flutter_application_1/model/token_model.dart';
import 'package:retrofit/retrofit.dart';

part 'user_client.g.dart';

@RestApi(baseUrl: "https://accounts.spotify.com/")
abstract class UserClient {
  
factory UserClient(Dio dio) = _UserClient;

    @POST("api/token")
    Future<TokenModel> getAccessToken();  
}