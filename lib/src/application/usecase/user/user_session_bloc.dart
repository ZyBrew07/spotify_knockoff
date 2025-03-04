import "package:bloc/bloc.dart";
import "package:flutter/foundation.dart";
import "package:flutter_application_1/src/domain/model/user/token_model.dart";
import "package:flutter_application_1/src/infra/repository/spotify_repository.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part 'user_session_bloc.freezed.dart';
part 'user_session_state.dart';
part 'user_session_event.dart';

class UserSessionBloc extends Bloc<UserSessionEvent, UserSessionState>{
  
  final SpotifyRepository repo;

  UserSessionBloc({
    required this.repo
  }) : super (const _Initializer()) {
    on<UserSessionEvent>(getToken);
  }

  Future<void> getToken(event, emit) async {

    emit(const UserSessionState.loading());
    
    final TokenModel token = await repo.getAccessToken();

    if (token.access_token != "") {
      emit(const UserSessionState.loaded());
      repo.cacheToken(token);
      return;
    } else {
      print("TOKEN: EMPTY ");
    }
  }
}