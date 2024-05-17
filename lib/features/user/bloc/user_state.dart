part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loading() = _Loading;
  const factory UserState.loaded(List<User> user, bool? hasReachedMax) =
      _Loaded;
  const factory UserState.error(String? message) = _Error;
  const factory UserState.empty(String? message) = _Empty;

  const factory UserState.userDetailLoading() = _UserDetailLoading;
  const factory UserState.userDetailLoaded(UserDetail userDetail) =
      _UserDetailLoaded;
  const factory UserState.userDetailError(String? message) = _UserDetailError;

  const factory UserState.updateUserLoading() = _UpdateUserLoading;
  const factory UserState.updateUserSuccess() = _UpdateUserSuccess;
  const factory UserState.updateUserFailure(String? message) =
      _UpdateUserFailure;

  const factory UserState.uploadAvatarLoading() = _UploadAvatarLoading;
  const factory UserState.uploadAvatarSuccess() = _UploadAvatarSuccess;
  const factory UserState.uploadAvatarFailure(String? message) =
      _UploadAvatarFailure;
}
