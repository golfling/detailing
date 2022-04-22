part of 'firebase_cubit.dart';

@freezed
class FirebaseState with _$FirebaseState {
  const factory FirebaseState.loading() = _FirebaseLoadingState;
  const factory FirebaseState.error() = _FirebaseErrorState;
  const factory FirebaseState.userLoaded() = _FirebaseUserLoadedState;
  const factory FirebaseState.noUser() = _FirebaseNoUserState;
}
