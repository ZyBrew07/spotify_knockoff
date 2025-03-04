
part of 'user_session_bloc.dart';

@freezed
class UserSessionState with _$UserSessionState {
   const factory UserSessionState.initializer() = _Initializer;
   const factory UserSessionState.loading() = _Loading;
   const factory UserSessionState.loaded() = _Loaded;
   const factory UserSessionState.failed() = _failed;
}