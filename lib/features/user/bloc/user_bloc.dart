import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwms_rm_app/features/user/data/user_repository.dart';
import 'package:fwms_rm_app/features/user/models/update_user.dart';
import 'package:fwms_rm_app/features/user/models/user.dart';
import 'package:fwms_rm_app/features/user/models/user_detail.dart';
import 'package:image_picker/image_picker.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository repo;

  int _currentPage = 0;
  bool _hasReachedMax = false;

  UserBloc(this.repo) : super(_Initial()) {
    on<_Started>(_onStarted);
    on<_Refresh>(_onRefreshStarted);
    on<_LoadMore>(_onLoadMoreStarted);
    on<_GetUserDetail>(_onGetUserDetailStarted);
    on<_UpdateUser>(_onUpdateUserStarted);
    on<_UploadAvatar>(_onUploadAvatarStarted);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<UserState> emit) async {
    emit(const _Loading());
    try {
      _currentPage = 1;
      _hasReachedMax = false;
      final users = await repo.getUsers(pageIndex: _currentPage, pageSize: 10);
      if (users.isEmpty) {
        emit(const _Empty('No users found'));
      }
      emit(_Loaded(users, _hasReachedMax));
      _currentPage++;
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }

  FutureOr<void> _onRefreshStarted(
      _Refresh event, Emitter<UserState> emit) async {
    emit(const _Loading());
    try {
      _currentPage = 1;
      _hasReachedMax = false;
      final users = await repo.getUsers(pageIndex: _currentPage, pageSize: 10);
      emit(_Loaded(users, _hasReachedMax));
      _currentPage++;
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }

  FutureOr<void> _onLoadMoreStarted(
      _LoadMore event, Emitter<UserState> emit) async {
    if (!_hasReachedMax) {
      emit(const _Loading());
      try {
        final users =
            await repo.getUsers(pageIndex: _currentPage, pageSize: 10);
        final hasReachedMax = users.length < 10;
        emit(_Loaded(users, _hasReachedMax));
        if (!hasReachedMax) _currentPage++;
      } catch (e) {
        emit(_Error(e.toString()));
      }
    }
  }

  FutureOr<void> _onGetUserDetailStarted(
      _GetUserDetail event, Emitter<UserState> emit) async {
    emit(const _UserDetailLoading());
    try {
      final userDetail = await repo.getUserById();
      emit(_UserDetailLoaded(userDetail));
    } catch (e) {
      emit(_UserDetailError(e.toString()));
    }
  }

  FutureOr<void> _onUpdateUserStarted(
      _UpdateUser event, Emitter<UserState> emit) async {
    emit(const _UpdateUserLoading());
    try {
      await repo.updateUser(event.updateUser);
      emit(const _UpdateUserSuccess());
    } catch (e) {
      emit(_UpdateUserFailure(e.toString()));
    }
  }

  FutureOr<void> _onUploadAvatarStarted(
      _UploadAvatar event, Emitter<UserState> emit) async {
    emit(const _UploadAvatarLoading());
    try {
      await repo.uploadProfileImage(image: event.avatar);
      emit(const _UploadAvatarSuccess());
    } catch (e) {
      emit(_UploadAvatarFailure(e.toString()));
    }
  }
}
