part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.started() = _Started;
  const factory UserEvent.refresh() = _Refresh;
  const factory UserEvent.loadMore() = _LoadMore;
  const factory UserEvent.getUserDetail() = _GetUserDetail;
  const factory UserEvent.updateUser(UpdateUser updateUser) = _UpdateUser;
  const factory UserEvent.uploadAvatar(XFile avatar) = _UploadAvatar;
}