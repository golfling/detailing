part of 'firebase_cubit.dart';

@freezed
class FirebaseState with _$FirebaseState {
  const factory FirebaseState.loading() = _FirebaseLoadingState;
  const factory FirebaseState.userLoaded({required CustomerModel customer, ServicesList? servicesList}) =
      _FirebaseUserLoadedState;
  const factory FirebaseState.noUser() = _FirebaseNoUserState;
}
