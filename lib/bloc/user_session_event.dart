part of 'user_session_bloc.dart';

@freezed
class UserSessionEvent with _$UserSessionEvent {
   const factory UserSessionEvent.retreiveAccessToken() = _RetreiveAccessToken;
}