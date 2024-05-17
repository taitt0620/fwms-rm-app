// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function() getUserDetail,
    required TResult Function(UpdateUser updateUser) updateUser,
    required TResult Function(XFile avatar) uploadAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function()? getUserDetail,
    TResult? Function(UpdateUser updateUser)? updateUser,
    TResult? Function(XFile avatar)? uploadAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function()? getUserDetail,
    TResult Function(UpdateUser updateUser)? updateUser,
    TResult Function(XFile avatar)? uploadAvatar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_GetUserDetail value) getUserDetail,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_UploadAvatar value) uploadAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_GetUserDetail value)? getUserDetail,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_UploadAvatar value)? uploadAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_GetUserDetail value)? getUserDetail,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_UploadAvatar value)? uploadAvatar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UserEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function() getUserDetail,
    required TResult Function(UpdateUser updateUser) updateUser,
    required TResult Function(XFile avatar) uploadAvatar,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function()? getUserDetail,
    TResult? Function(UpdateUser updateUser)? updateUser,
    TResult? Function(XFile avatar)? uploadAvatar,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function()? getUserDetail,
    TResult Function(UpdateUser updateUser)? updateUser,
    TResult Function(XFile avatar)? uploadAvatar,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_GetUserDetail value) getUserDetail,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_UploadAvatar value) uploadAvatar,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_GetUserDetail value)? getUserDetail,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_UploadAvatar value)? uploadAvatar,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_GetUserDetail value)? getUserDetail,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_UploadAvatar value)? uploadAvatar,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$RefreshImplCopyWith<$Res> {
  factory _$$RefreshImplCopyWith(
          _$RefreshImpl value, $Res Function(_$RefreshImpl) then) =
      __$$RefreshImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$RefreshImpl>
    implements _$$RefreshImplCopyWith<$Res> {
  __$$RefreshImplCopyWithImpl(
      _$RefreshImpl _value, $Res Function(_$RefreshImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshImpl implements _Refresh {
  const _$RefreshImpl();

  @override
  String toString() {
    return 'UserEvent.refresh()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function() getUserDetail,
    required TResult Function(UpdateUser updateUser) updateUser,
    required TResult Function(XFile avatar) uploadAvatar,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function()? getUserDetail,
    TResult? Function(UpdateUser updateUser)? updateUser,
    TResult? Function(XFile avatar)? uploadAvatar,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function()? getUserDetail,
    TResult Function(UpdateUser updateUser)? updateUser,
    TResult Function(XFile avatar)? uploadAvatar,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_GetUserDetail value) getUserDetail,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_UploadAvatar value) uploadAvatar,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_GetUserDetail value)? getUserDetail,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_UploadAvatar value)? uploadAvatar,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_GetUserDetail value)? getUserDetail,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_UploadAvatar value)? uploadAvatar,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements UserEvent {
  const factory _Refresh() = _$RefreshImpl;
}

/// @nodoc
abstract class _$$LoadMoreImplCopyWith<$Res> {
  factory _$$LoadMoreImplCopyWith(
          _$LoadMoreImpl value, $Res Function(_$LoadMoreImpl) then) =
      __$$LoadMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$LoadMoreImpl>
    implements _$$LoadMoreImplCopyWith<$Res> {
  __$$LoadMoreImplCopyWithImpl(
      _$LoadMoreImpl _value, $Res Function(_$LoadMoreImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMoreImpl implements _LoadMore {
  const _$LoadMoreImpl();

  @override
  String toString() {
    return 'UserEvent.loadMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function() getUserDetail,
    required TResult Function(UpdateUser updateUser) updateUser,
    required TResult Function(XFile avatar) uploadAvatar,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function()? getUserDetail,
    TResult? Function(UpdateUser updateUser)? updateUser,
    TResult? Function(XFile avatar)? uploadAvatar,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function()? getUserDetail,
    TResult Function(UpdateUser updateUser)? updateUser,
    TResult Function(XFile avatar)? uploadAvatar,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_GetUserDetail value) getUserDetail,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_UploadAvatar value) uploadAvatar,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_GetUserDetail value)? getUserDetail,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_UploadAvatar value)? uploadAvatar,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_GetUserDetail value)? getUserDetail,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_UploadAvatar value)? uploadAvatar,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements UserEvent {
  const factory _LoadMore() = _$LoadMoreImpl;
}

/// @nodoc
abstract class _$$GetUserDetailImplCopyWith<$Res> {
  factory _$$GetUserDetailImplCopyWith(
          _$GetUserDetailImpl value, $Res Function(_$GetUserDetailImpl) then) =
      __$$GetUserDetailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserDetailImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUserDetailImpl>
    implements _$$GetUserDetailImplCopyWith<$Res> {
  __$$GetUserDetailImplCopyWithImpl(
      _$GetUserDetailImpl _value, $Res Function(_$GetUserDetailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserDetailImpl implements _GetUserDetail {
  const _$GetUserDetailImpl();

  @override
  String toString() {
    return 'UserEvent.getUserDetail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserDetailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function() getUserDetail,
    required TResult Function(UpdateUser updateUser) updateUser,
    required TResult Function(XFile avatar) uploadAvatar,
  }) {
    return getUserDetail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function()? getUserDetail,
    TResult? Function(UpdateUser updateUser)? updateUser,
    TResult? Function(XFile avatar)? uploadAvatar,
  }) {
    return getUserDetail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function()? getUserDetail,
    TResult Function(UpdateUser updateUser)? updateUser,
    TResult Function(XFile avatar)? uploadAvatar,
    required TResult orElse(),
  }) {
    if (getUserDetail != null) {
      return getUserDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_GetUserDetail value) getUserDetail,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_UploadAvatar value) uploadAvatar,
  }) {
    return getUserDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_GetUserDetail value)? getUserDetail,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_UploadAvatar value)? uploadAvatar,
  }) {
    return getUserDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_GetUserDetail value)? getUserDetail,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_UploadAvatar value)? uploadAvatar,
    required TResult orElse(),
  }) {
    if (getUserDetail != null) {
      return getUserDetail(this);
    }
    return orElse();
  }
}

abstract class _GetUserDetail implements UserEvent {
  const factory _GetUserDetail() = _$GetUserDetailImpl;
}

/// @nodoc
abstract class _$$UpdateUserImplCopyWith<$Res> {
  factory _$$UpdateUserImplCopyWith(
          _$UpdateUserImpl value, $Res Function(_$UpdateUserImpl) then) =
      __$$UpdateUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateUser updateUser});

  $UpdateUserCopyWith<$Res> get updateUser;
}

/// @nodoc
class __$$UpdateUserImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UpdateUserImpl>
    implements _$$UpdateUserImplCopyWith<$Res> {
  __$$UpdateUserImplCopyWithImpl(
      _$UpdateUserImpl _value, $Res Function(_$UpdateUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateUser = null,
  }) {
    return _then(_$UpdateUserImpl(
      null == updateUser
          ? _value.updateUser
          : updateUser // ignore: cast_nullable_to_non_nullable
              as UpdateUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateUserCopyWith<$Res> get updateUser {
    return $UpdateUserCopyWith<$Res>(_value.updateUser, (value) {
      return _then(_value.copyWith(updateUser: value));
    });
  }
}

/// @nodoc

class _$UpdateUserImpl implements _UpdateUser {
  const _$UpdateUserImpl(this.updateUser);

  @override
  final UpdateUser updateUser;

  @override
  String toString() {
    return 'UserEvent.updateUser(updateUser: $updateUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserImpl &&
            (identical(other.updateUser, updateUser) ||
                other.updateUser == updateUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      __$$UpdateUserImplCopyWithImpl<_$UpdateUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function() getUserDetail,
    required TResult Function(UpdateUser updateUser) updateUser,
    required TResult Function(XFile avatar) uploadAvatar,
  }) {
    return updateUser(this.updateUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function()? getUserDetail,
    TResult? Function(UpdateUser updateUser)? updateUser,
    TResult? Function(XFile avatar)? uploadAvatar,
  }) {
    return updateUser?.call(this.updateUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function()? getUserDetail,
    TResult Function(UpdateUser updateUser)? updateUser,
    TResult Function(XFile avatar)? uploadAvatar,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this.updateUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_GetUserDetail value) getUserDetail,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_UploadAvatar value) uploadAvatar,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_GetUserDetail value)? getUserDetail,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_UploadAvatar value)? uploadAvatar,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_GetUserDetail value)? getUserDetail,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_UploadAvatar value)? uploadAvatar,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class _UpdateUser implements UserEvent {
  const factory _UpdateUser(final UpdateUser updateUser) = _$UpdateUserImpl;

  UpdateUser get updateUser;
  @JsonKey(ignore: true)
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadAvatarImplCopyWith<$Res> {
  factory _$$UploadAvatarImplCopyWith(
          _$UploadAvatarImpl value, $Res Function(_$UploadAvatarImpl) then) =
      __$$UploadAvatarImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile avatar});
}

/// @nodoc
class __$$UploadAvatarImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UploadAvatarImpl>
    implements _$$UploadAvatarImplCopyWith<$Res> {
  __$$UploadAvatarImplCopyWithImpl(
      _$UploadAvatarImpl _value, $Res Function(_$UploadAvatarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
  }) {
    return _then(_$UploadAvatarImpl(
      null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$UploadAvatarImpl implements _UploadAvatar {
  const _$UploadAvatarImpl(this.avatar);

  @override
  final XFile avatar;

  @override
  String toString() {
    return 'UserEvent.uploadAvatar(avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadAvatarImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadAvatarImplCopyWith<_$UploadAvatarImpl> get copyWith =>
      __$$UploadAvatarImplCopyWithImpl<_$UploadAvatarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function() getUserDetail,
    required TResult Function(UpdateUser updateUser) updateUser,
    required TResult Function(XFile avatar) uploadAvatar,
  }) {
    return uploadAvatar(avatar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function()? getUserDetail,
    TResult? Function(UpdateUser updateUser)? updateUser,
    TResult? Function(XFile avatar)? uploadAvatar,
  }) {
    return uploadAvatar?.call(avatar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function()? getUserDetail,
    TResult Function(UpdateUser updateUser)? updateUser,
    TResult Function(XFile avatar)? uploadAvatar,
    required TResult orElse(),
  }) {
    if (uploadAvatar != null) {
      return uploadAvatar(avatar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_GetUserDetail value) getUserDetail,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_UploadAvatar value) uploadAvatar,
  }) {
    return uploadAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_GetUserDetail value)? getUserDetail,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_UploadAvatar value)? uploadAvatar,
  }) {
    return uploadAvatar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_GetUserDetail value)? getUserDetail,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_UploadAvatar value)? uploadAvatar,
    required TResult orElse(),
  }) {
    if (uploadAvatar != null) {
      return uploadAvatar(this);
    }
    return orElse();
  }
}

abstract class _UploadAvatar implements UserEvent {
  const factory _UploadAvatar(final XFile avatar) = _$UploadAvatarImpl;

  XFile get avatar;
  @JsonKey(ignore: true)
  _$$UploadAvatarImplCopyWith<_$UploadAvatarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> user, bool? hasReachedMax) loaded,
    required TResult Function(String? message) error,
    required TResult Function(String? message) empty,
    required TResult Function() userDetailLoading,
    required TResult Function(UserDetail userDetail) userDetailLoaded,
    required TResult Function(String? message) userDetailError,
    required TResult Function() updateUserLoading,
    required TResult Function() updateUserSuccess,
    required TResult Function(String? message) updateUserFailure,
    required TResult Function() uploadAvatarLoading,
    required TResult Function() uploadAvatarSuccess,
    required TResult Function(String? message) uploadAvatarFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? userDetailLoading,
    TResult? Function(UserDetail userDetail)? userDetailLoaded,
    TResult? Function(String? message)? userDetailError,
    TResult? Function()? updateUserLoading,
    TResult? Function()? updateUserSuccess,
    TResult? Function(String? message)? updateUserFailure,
    TResult? Function()? uploadAvatarLoading,
    TResult? Function()? uploadAvatarSuccess,
    TResult? Function(String? message)? uploadAvatarFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult Function(String? message)? error,
    TResult Function(String? message)? empty,
    TResult Function()? userDetailLoading,
    TResult Function(UserDetail userDetail)? userDetailLoaded,
    TResult Function(String? message)? userDetailError,
    TResult Function()? updateUserLoading,
    TResult Function()? updateUserSuccess,
    TResult Function(String? message)? updateUserFailure,
    TResult Function()? uploadAvatarLoading,
    TResult Function()? uploadAvatarSuccess,
    TResult Function(String? message)? uploadAvatarFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_UserDetailLoading value) userDetailLoading,
    required TResult Function(_UserDetailLoaded value) userDetailLoaded,
    required TResult Function(_UserDetailError value) userDetailError,
    required TResult Function(_UpdateUserLoading value) updateUserLoading,
    required TResult Function(_UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(_UpdateUserFailure value) updateUserFailure,
    required TResult Function(_UploadAvatarLoading value) uploadAvatarLoading,
    required TResult Function(_UploadAvatarSuccess value) uploadAvatarSuccess,
    required TResult Function(_UploadAvatarFailure value) uploadAvatarFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_UserDetailLoading value)? userDetailLoading,
    TResult? Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult? Function(_UserDetailError value)? userDetailError,
    TResult? Function(_UpdateUserLoading value)? updateUserLoading,
    TResult? Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(_UpdateUserFailure value)? updateUserFailure,
    TResult? Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult? Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult? Function(_UploadAvatarFailure value)? uploadAvatarFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_UserDetailLoading value)? userDetailLoading,
    TResult Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult Function(_UserDetailError value)? userDetailError,
    TResult Function(_UpdateUserLoading value)? updateUserLoading,
    TResult Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(_UpdateUserFailure value)? updateUserFailure,
    TResult Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult Function(_UploadAvatarFailure value)? uploadAvatarFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> user, bool? hasReachedMax) loaded,
    required TResult Function(String? message) error,
    required TResult Function(String? message) empty,
    required TResult Function() userDetailLoading,
    required TResult Function(UserDetail userDetail) userDetailLoaded,
    required TResult Function(String? message) userDetailError,
    required TResult Function() updateUserLoading,
    required TResult Function() updateUserSuccess,
    required TResult Function(String? message) updateUserFailure,
    required TResult Function() uploadAvatarLoading,
    required TResult Function() uploadAvatarSuccess,
    required TResult Function(String? message) uploadAvatarFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? userDetailLoading,
    TResult? Function(UserDetail userDetail)? userDetailLoaded,
    TResult? Function(String? message)? userDetailError,
    TResult? Function()? updateUserLoading,
    TResult? Function()? updateUserSuccess,
    TResult? Function(String? message)? updateUserFailure,
    TResult? Function()? uploadAvatarLoading,
    TResult? Function()? uploadAvatarSuccess,
    TResult? Function(String? message)? uploadAvatarFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult Function(String? message)? error,
    TResult Function(String? message)? empty,
    TResult Function()? userDetailLoading,
    TResult Function(UserDetail userDetail)? userDetailLoaded,
    TResult Function(String? message)? userDetailError,
    TResult Function()? updateUserLoading,
    TResult Function()? updateUserSuccess,
    TResult Function(String? message)? updateUserFailure,
    TResult Function()? uploadAvatarLoading,
    TResult Function()? uploadAvatarSuccess,
    TResult Function(String? message)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_UserDetailLoading value) userDetailLoading,
    required TResult Function(_UserDetailLoaded value) userDetailLoaded,
    required TResult Function(_UserDetailError value) userDetailError,
    required TResult Function(_UpdateUserLoading value) updateUserLoading,
    required TResult Function(_UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(_UpdateUserFailure value) updateUserFailure,
    required TResult Function(_UploadAvatarLoading value) uploadAvatarLoading,
    required TResult Function(_UploadAvatarSuccess value) uploadAvatarSuccess,
    required TResult Function(_UploadAvatarFailure value) uploadAvatarFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_UserDetailLoading value)? userDetailLoading,
    TResult? Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult? Function(_UserDetailError value)? userDetailError,
    TResult? Function(_UpdateUserLoading value)? updateUserLoading,
    TResult? Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(_UpdateUserFailure value)? updateUserFailure,
    TResult? Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult? Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult? Function(_UploadAvatarFailure value)? uploadAvatarFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_UserDetailLoading value)? userDetailLoading,
    TResult Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult Function(_UserDetailError value)? userDetailError,
    TResult Function(_UpdateUserLoading value)? updateUserLoading,
    TResult Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(_UpdateUserFailure value)? updateUserFailure,
    TResult Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult Function(_UploadAvatarFailure value)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> user, bool? hasReachedMax) loaded,
    required TResult Function(String? message) error,
    required TResult Function(String? message) empty,
    required TResult Function() userDetailLoading,
    required TResult Function(UserDetail userDetail) userDetailLoaded,
    required TResult Function(String? message) userDetailError,
    required TResult Function() updateUserLoading,
    required TResult Function() updateUserSuccess,
    required TResult Function(String? message) updateUserFailure,
    required TResult Function() uploadAvatarLoading,
    required TResult Function() uploadAvatarSuccess,
    required TResult Function(String? message) uploadAvatarFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? userDetailLoading,
    TResult? Function(UserDetail userDetail)? userDetailLoaded,
    TResult? Function(String? message)? userDetailError,
    TResult? Function()? updateUserLoading,
    TResult? Function()? updateUserSuccess,
    TResult? Function(String? message)? updateUserFailure,
    TResult? Function()? uploadAvatarLoading,
    TResult? Function()? uploadAvatarSuccess,
    TResult? Function(String? message)? uploadAvatarFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult Function(String? message)? error,
    TResult Function(String? message)? empty,
    TResult Function()? userDetailLoading,
    TResult Function(UserDetail userDetail)? userDetailLoaded,
    TResult Function(String? message)? userDetailError,
    TResult Function()? updateUserLoading,
    TResult Function()? updateUserSuccess,
    TResult Function(String? message)? updateUserFailure,
    TResult Function()? uploadAvatarLoading,
    TResult Function()? uploadAvatarSuccess,
    TResult Function(String? message)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_UserDetailLoading value) userDetailLoading,
    required TResult Function(_UserDetailLoaded value) userDetailLoaded,
    required TResult Function(_UserDetailError value) userDetailError,
    required TResult Function(_UpdateUserLoading value) updateUserLoading,
    required TResult Function(_UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(_UpdateUserFailure value) updateUserFailure,
    required TResult Function(_UploadAvatarLoading value) uploadAvatarLoading,
    required TResult Function(_UploadAvatarSuccess value) uploadAvatarSuccess,
    required TResult Function(_UploadAvatarFailure value) uploadAvatarFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_UserDetailLoading value)? userDetailLoading,
    TResult? Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult? Function(_UserDetailError value)? userDetailError,
    TResult? Function(_UpdateUserLoading value)? updateUserLoading,
    TResult? Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(_UpdateUserFailure value)? updateUserFailure,
    TResult? Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult? Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult? Function(_UploadAvatarFailure value)? uploadAvatarFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_UserDetailLoading value)? userDetailLoading,
    TResult Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult Function(_UserDetailError value)? userDetailError,
    TResult Function(_UpdateUserLoading value)? updateUserLoading,
    TResult Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(_UpdateUserFailure value)? updateUserFailure,
    TResult Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult Function(_UploadAvatarFailure value)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UserState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<User> user, bool? hasReachedMax});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? hasReachedMax = freezed,
  }) {
    return _then(_$LoadedImpl(
      null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<User>,
      freezed == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<User> user, this.hasReachedMax) : _user = user;

  final List<User> _user;
  @override
  List<User> get user {
    if (_user is EqualUnmodifiableListView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_user);
  }

  @override
  final bool? hasReachedMax;

  @override
  String toString() {
    return 'UserState.loaded(user: $user, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._user, _user) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_user), hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> user, bool? hasReachedMax) loaded,
    required TResult Function(String? message) error,
    required TResult Function(String? message) empty,
    required TResult Function() userDetailLoading,
    required TResult Function(UserDetail userDetail) userDetailLoaded,
    required TResult Function(String? message) userDetailError,
    required TResult Function() updateUserLoading,
    required TResult Function() updateUserSuccess,
    required TResult Function(String? message) updateUserFailure,
    required TResult Function() uploadAvatarLoading,
    required TResult Function() uploadAvatarSuccess,
    required TResult Function(String? message) uploadAvatarFailure,
  }) {
    return loaded(user, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? userDetailLoading,
    TResult? Function(UserDetail userDetail)? userDetailLoaded,
    TResult? Function(String? message)? userDetailError,
    TResult? Function()? updateUserLoading,
    TResult? Function()? updateUserSuccess,
    TResult? Function(String? message)? updateUserFailure,
    TResult? Function()? uploadAvatarLoading,
    TResult? Function()? uploadAvatarSuccess,
    TResult? Function(String? message)? uploadAvatarFailure,
  }) {
    return loaded?.call(user, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult Function(String? message)? error,
    TResult Function(String? message)? empty,
    TResult Function()? userDetailLoading,
    TResult Function(UserDetail userDetail)? userDetailLoaded,
    TResult Function(String? message)? userDetailError,
    TResult Function()? updateUserLoading,
    TResult Function()? updateUserSuccess,
    TResult Function(String? message)? updateUserFailure,
    TResult Function()? uploadAvatarLoading,
    TResult Function()? uploadAvatarSuccess,
    TResult Function(String? message)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_UserDetailLoading value) userDetailLoading,
    required TResult Function(_UserDetailLoaded value) userDetailLoaded,
    required TResult Function(_UserDetailError value) userDetailError,
    required TResult Function(_UpdateUserLoading value) updateUserLoading,
    required TResult Function(_UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(_UpdateUserFailure value) updateUserFailure,
    required TResult Function(_UploadAvatarLoading value) uploadAvatarLoading,
    required TResult Function(_UploadAvatarSuccess value) uploadAvatarSuccess,
    required TResult Function(_UploadAvatarFailure value) uploadAvatarFailure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_UserDetailLoading value)? userDetailLoading,
    TResult? Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult? Function(_UserDetailError value)? userDetailError,
    TResult? Function(_UpdateUserLoading value)? updateUserLoading,
    TResult? Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(_UpdateUserFailure value)? updateUserFailure,
    TResult? Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult? Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult? Function(_UploadAvatarFailure value)? uploadAvatarFailure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_UserDetailLoading value)? userDetailLoading,
    TResult Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult Function(_UserDetailError value)? userDetailError,
    TResult Function(_UpdateUserLoading value)? updateUserLoading,
    TResult Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(_UpdateUserFailure value)? updateUserFailure,
    TResult Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult Function(_UploadAvatarFailure value)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements UserState {
  const factory _Loaded(final List<User> user, final bool? hasReachedMax) =
      _$LoadedImpl;

  List<User> get user;
  bool? get hasReachedMax;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'UserState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> user, bool? hasReachedMax) loaded,
    required TResult Function(String? message) error,
    required TResult Function(String? message) empty,
    required TResult Function() userDetailLoading,
    required TResult Function(UserDetail userDetail) userDetailLoaded,
    required TResult Function(String? message) userDetailError,
    required TResult Function() updateUserLoading,
    required TResult Function() updateUserSuccess,
    required TResult Function(String? message) updateUserFailure,
    required TResult Function() uploadAvatarLoading,
    required TResult Function() uploadAvatarSuccess,
    required TResult Function(String? message) uploadAvatarFailure,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? userDetailLoading,
    TResult? Function(UserDetail userDetail)? userDetailLoaded,
    TResult? Function(String? message)? userDetailError,
    TResult? Function()? updateUserLoading,
    TResult? Function()? updateUserSuccess,
    TResult? Function(String? message)? updateUserFailure,
    TResult? Function()? uploadAvatarLoading,
    TResult? Function()? uploadAvatarSuccess,
    TResult? Function(String? message)? uploadAvatarFailure,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult Function(String? message)? error,
    TResult Function(String? message)? empty,
    TResult Function()? userDetailLoading,
    TResult Function(UserDetail userDetail)? userDetailLoaded,
    TResult Function(String? message)? userDetailError,
    TResult Function()? updateUserLoading,
    TResult Function()? updateUserSuccess,
    TResult Function(String? message)? updateUserFailure,
    TResult Function()? uploadAvatarLoading,
    TResult Function()? uploadAvatarSuccess,
    TResult Function(String? message)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_UserDetailLoading value) userDetailLoading,
    required TResult Function(_UserDetailLoaded value) userDetailLoaded,
    required TResult Function(_UserDetailError value) userDetailError,
    required TResult Function(_UpdateUserLoading value) updateUserLoading,
    required TResult Function(_UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(_UpdateUserFailure value) updateUserFailure,
    required TResult Function(_UploadAvatarLoading value) uploadAvatarLoading,
    required TResult Function(_UploadAvatarSuccess value) uploadAvatarSuccess,
    required TResult Function(_UploadAvatarFailure value) uploadAvatarFailure,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_UserDetailLoading value)? userDetailLoading,
    TResult? Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult? Function(_UserDetailError value)? userDetailError,
    TResult? Function(_UpdateUserLoading value)? updateUserLoading,
    TResult? Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(_UpdateUserFailure value)? updateUserFailure,
    TResult? Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult? Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult? Function(_UploadAvatarFailure value)? uploadAvatarFailure,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_UserDetailLoading value)? userDetailLoading,
    TResult Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult Function(_UserDetailError value)? userDetailError,
    TResult Function(_UpdateUserLoading value)? updateUserLoading,
    TResult Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(_UpdateUserFailure value)? updateUserFailure,
    TResult Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult Function(_UploadAvatarFailure value)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements UserState {
  const factory _Error(final String? message) = _$ErrorImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$EmptyImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EmptyImpl implements _Empty {
  const _$EmptyImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'UserState.empty(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      __$$EmptyImplCopyWithImpl<_$EmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> user, bool? hasReachedMax) loaded,
    required TResult Function(String? message) error,
    required TResult Function(String? message) empty,
    required TResult Function() userDetailLoading,
    required TResult Function(UserDetail userDetail) userDetailLoaded,
    required TResult Function(String? message) userDetailError,
    required TResult Function() updateUserLoading,
    required TResult Function() updateUserSuccess,
    required TResult Function(String? message) updateUserFailure,
    required TResult Function() uploadAvatarLoading,
    required TResult Function() uploadAvatarSuccess,
    required TResult Function(String? message) uploadAvatarFailure,
  }) {
    return empty(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? userDetailLoading,
    TResult? Function(UserDetail userDetail)? userDetailLoaded,
    TResult? Function(String? message)? userDetailError,
    TResult? Function()? updateUserLoading,
    TResult? Function()? updateUserSuccess,
    TResult? Function(String? message)? updateUserFailure,
    TResult? Function()? uploadAvatarLoading,
    TResult? Function()? uploadAvatarSuccess,
    TResult? Function(String? message)? uploadAvatarFailure,
  }) {
    return empty?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult Function(String? message)? error,
    TResult Function(String? message)? empty,
    TResult Function()? userDetailLoading,
    TResult Function(UserDetail userDetail)? userDetailLoaded,
    TResult Function(String? message)? userDetailError,
    TResult Function()? updateUserLoading,
    TResult Function()? updateUserSuccess,
    TResult Function(String? message)? updateUserFailure,
    TResult Function()? uploadAvatarLoading,
    TResult Function()? uploadAvatarSuccess,
    TResult Function(String? message)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_UserDetailLoading value) userDetailLoading,
    required TResult Function(_UserDetailLoaded value) userDetailLoaded,
    required TResult Function(_UserDetailError value) userDetailError,
    required TResult Function(_UpdateUserLoading value) updateUserLoading,
    required TResult Function(_UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(_UpdateUserFailure value) updateUserFailure,
    required TResult Function(_UploadAvatarLoading value) uploadAvatarLoading,
    required TResult Function(_UploadAvatarSuccess value) uploadAvatarSuccess,
    required TResult Function(_UploadAvatarFailure value) uploadAvatarFailure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_UserDetailLoading value)? userDetailLoading,
    TResult? Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult? Function(_UserDetailError value)? userDetailError,
    TResult? Function(_UpdateUserLoading value)? updateUserLoading,
    TResult? Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(_UpdateUserFailure value)? updateUserFailure,
    TResult? Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult? Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult? Function(_UploadAvatarFailure value)? uploadAvatarFailure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_UserDetailLoading value)? userDetailLoading,
    TResult Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult Function(_UserDetailError value)? userDetailError,
    TResult Function(_UpdateUserLoading value)? updateUserLoading,
    TResult Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(_UpdateUserFailure value)? updateUserFailure,
    TResult Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult Function(_UploadAvatarFailure value)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements UserState {
  const factory _Empty(final String? message) = _$EmptyImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDetailLoadingImplCopyWith<$Res> {
  factory _$$UserDetailLoadingImplCopyWith(_$UserDetailLoadingImpl value,
          $Res Function(_$UserDetailLoadingImpl) then) =
      __$$UserDetailLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserDetailLoadingImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserDetailLoadingImpl>
    implements _$$UserDetailLoadingImplCopyWith<$Res> {
  __$$UserDetailLoadingImplCopyWithImpl(_$UserDetailLoadingImpl _value,
      $Res Function(_$UserDetailLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserDetailLoadingImpl implements _UserDetailLoading {
  const _$UserDetailLoadingImpl();

  @override
  String toString() {
    return 'UserState.userDetailLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserDetailLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> user, bool? hasReachedMax) loaded,
    required TResult Function(String? message) error,
    required TResult Function(String? message) empty,
    required TResult Function() userDetailLoading,
    required TResult Function(UserDetail userDetail) userDetailLoaded,
    required TResult Function(String? message) userDetailError,
    required TResult Function() updateUserLoading,
    required TResult Function() updateUserSuccess,
    required TResult Function(String? message) updateUserFailure,
    required TResult Function() uploadAvatarLoading,
    required TResult Function() uploadAvatarSuccess,
    required TResult Function(String? message) uploadAvatarFailure,
  }) {
    return userDetailLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? userDetailLoading,
    TResult? Function(UserDetail userDetail)? userDetailLoaded,
    TResult? Function(String? message)? userDetailError,
    TResult? Function()? updateUserLoading,
    TResult? Function()? updateUserSuccess,
    TResult? Function(String? message)? updateUserFailure,
    TResult? Function()? uploadAvatarLoading,
    TResult? Function()? uploadAvatarSuccess,
    TResult? Function(String? message)? uploadAvatarFailure,
  }) {
    return userDetailLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult Function(String? message)? error,
    TResult Function(String? message)? empty,
    TResult Function()? userDetailLoading,
    TResult Function(UserDetail userDetail)? userDetailLoaded,
    TResult Function(String? message)? userDetailError,
    TResult Function()? updateUserLoading,
    TResult Function()? updateUserSuccess,
    TResult Function(String? message)? updateUserFailure,
    TResult Function()? uploadAvatarLoading,
    TResult Function()? uploadAvatarSuccess,
    TResult Function(String? message)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (userDetailLoading != null) {
      return userDetailLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_UserDetailLoading value) userDetailLoading,
    required TResult Function(_UserDetailLoaded value) userDetailLoaded,
    required TResult Function(_UserDetailError value) userDetailError,
    required TResult Function(_UpdateUserLoading value) updateUserLoading,
    required TResult Function(_UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(_UpdateUserFailure value) updateUserFailure,
    required TResult Function(_UploadAvatarLoading value) uploadAvatarLoading,
    required TResult Function(_UploadAvatarSuccess value) uploadAvatarSuccess,
    required TResult Function(_UploadAvatarFailure value) uploadAvatarFailure,
  }) {
    return userDetailLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_UserDetailLoading value)? userDetailLoading,
    TResult? Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult? Function(_UserDetailError value)? userDetailError,
    TResult? Function(_UpdateUserLoading value)? updateUserLoading,
    TResult? Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(_UpdateUserFailure value)? updateUserFailure,
    TResult? Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult? Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult? Function(_UploadAvatarFailure value)? uploadAvatarFailure,
  }) {
    return userDetailLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_UserDetailLoading value)? userDetailLoading,
    TResult Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult Function(_UserDetailError value)? userDetailError,
    TResult Function(_UpdateUserLoading value)? updateUserLoading,
    TResult Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(_UpdateUserFailure value)? updateUserFailure,
    TResult Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult Function(_UploadAvatarFailure value)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (userDetailLoading != null) {
      return userDetailLoading(this);
    }
    return orElse();
  }
}

abstract class _UserDetailLoading implements UserState {
  const factory _UserDetailLoading() = _$UserDetailLoadingImpl;
}

/// @nodoc
abstract class _$$UserDetailLoadedImplCopyWith<$Res> {
  factory _$$UserDetailLoadedImplCopyWith(_$UserDetailLoadedImpl value,
          $Res Function(_$UserDetailLoadedImpl) then) =
      __$$UserDetailLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserDetail userDetail});

  $UserDetailCopyWith<$Res> get userDetail;
}

/// @nodoc
class __$$UserDetailLoadedImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserDetailLoadedImpl>
    implements _$$UserDetailLoadedImplCopyWith<$Res> {
  __$$UserDetailLoadedImplCopyWithImpl(_$UserDetailLoadedImpl _value,
      $Res Function(_$UserDetailLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetail = null,
  }) {
    return _then(_$UserDetailLoadedImpl(
      null == userDetail
          ? _value.userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as UserDetail,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDetailCopyWith<$Res> get userDetail {
    return $UserDetailCopyWith<$Res>(_value.userDetail, (value) {
      return _then(_value.copyWith(userDetail: value));
    });
  }
}

/// @nodoc

class _$UserDetailLoadedImpl implements _UserDetailLoaded {
  const _$UserDetailLoadedImpl(this.userDetail);

  @override
  final UserDetail userDetail;

  @override
  String toString() {
    return 'UserState.userDetailLoaded(userDetail: $userDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailLoadedImpl &&
            (identical(other.userDetail, userDetail) ||
                other.userDetail == userDetail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailLoadedImplCopyWith<_$UserDetailLoadedImpl> get copyWith =>
      __$$UserDetailLoadedImplCopyWithImpl<_$UserDetailLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> user, bool? hasReachedMax) loaded,
    required TResult Function(String? message) error,
    required TResult Function(String? message) empty,
    required TResult Function() userDetailLoading,
    required TResult Function(UserDetail userDetail) userDetailLoaded,
    required TResult Function(String? message) userDetailError,
    required TResult Function() updateUserLoading,
    required TResult Function() updateUserSuccess,
    required TResult Function(String? message) updateUserFailure,
    required TResult Function() uploadAvatarLoading,
    required TResult Function() uploadAvatarSuccess,
    required TResult Function(String? message) uploadAvatarFailure,
  }) {
    return userDetailLoaded(userDetail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? userDetailLoading,
    TResult? Function(UserDetail userDetail)? userDetailLoaded,
    TResult? Function(String? message)? userDetailError,
    TResult? Function()? updateUserLoading,
    TResult? Function()? updateUserSuccess,
    TResult? Function(String? message)? updateUserFailure,
    TResult? Function()? uploadAvatarLoading,
    TResult? Function()? uploadAvatarSuccess,
    TResult? Function(String? message)? uploadAvatarFailure,
  }) {
    return userDetailLoaded?.call(userDetail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult Function(String? message)? error,
    TResult Function(String? message)? empty,
    TResult Function()? userDetailLoading,
    TResult Function(UserDetail userDetail)? userDetailLoaded,
    TResult Function(String? message)? userDetailError,
    TResult Function()? updateUserLoading,
    TResult Function()? updateUserSuccess,
    TResult Function(String? message)? updateUserFailure,
    TResult Function()? uploadAvatarLoading,
    TResult Function()? uploadAvatarSuccess,
    TResult Function(String? message)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (userDetailLoaded != null) {
      return userDetailLoaded(userDetail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_UserDetailLoading value) userDetailLoading,
    required TResult Function(_UserDetailLoaded value) userDetailLoaded,
    required TResult Function(_UserDetailError value) userDetailError,
    required TResult Function(_UpdateUserLoading value) updateUserLoading,
    required TResult Function(_UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(_UpdateUserFailure value) updateUserFailure,
    required TResult Function(_UploadAvatarLoading value) uploadAvatarLoading,
    required TResult Function(_UploadAvatarSuccess value) uploadAvatarSuccess,
    required TResult Function(_UploadAvatarFailure value) uploadAvatarFailure,
  }) {
    return userDetailLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_UserDetailLoading value)? userDetailLoading,
    TResult? Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult? Function(_UserDetailError value)? userDetailError,
    TResult? Function(_UpdateUserLoading value)? updateUserLoading,
    TResult? Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(_UpdateUserFailure value)? updateUserFailure,
    TResult? Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult? Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult? Function(_UploadAvatarFailure value)? uploadAvatarFailure,
  }) {
    return userDetailLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_UserDetailLoading value)? userDetailLoading,
    TResult Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult Function(_UserDetailError value)? userDetailError,
    TResult Function(_UpdateUserLoading value)? updateUserLoading,
    TResult Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(_UpdateUserFailure value)? updateUserFailure,
    TResult Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult Function(_UploadAvatarFailure value)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (userDetailLoaded != null) {
      return userDetailLoaded(this);
    }
    return orElse();
  }
}

abstract class _UserDetailLoaded implements UserState {
  const factory _UserDetailLoaded(final UserDetail userDetail) =
      _$UserDetailLoadedImpl;

  UserDetail get userDetail;
  @JsonKey(ignore: true)
  _$$UserDetailLoadedImplCopyWith<_$UserDetailLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDetailErrorImplCopyWith<$Res> {
  factory _$$UserDetailErrorImplCopyWith(_$UserDetailErrorImpl value,
          $Res Function(_$UserDetailErrorImpl) then) =
      __$$UserDetailErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UserDetailErrorImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserDetailErrorImpl>
    implements _$$UserDetailErrorImplCopyWith<$Res> {
  __$$UserDetailErrorImplCopyWithImpl(
      _$UserDetailErrorImpl _value, $Res Function(_$UserDetailErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UserDetailErrorImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserDetailErrorImpl implements _UserDetailError {
  const _$UserDetailErrorImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'UserState.userDetailError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailErrorImplCopyWith<_$UserDetailErrorImpl> get copyWith =>
      __$$UserDetailErrorImplCopyWithImpl<_$UserDetailErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> user, bool? hasReachedMax) loaded,
    required TResult Function(String? message) error,
    required TResult Function(String? message) empty,
    required TResult Function() userDetailLoading,
    required TResult Function(UserDetail userDetail) userDetailLoaded,
    required TResult Function(String? message) userDetailError,
    required TResult Function() updateUserLoading,
    required TResult Function() updateUserSuccess,
    required TResult Function(String? message) updateUserFailure,
    required TResult Function() uploadAvatarLoading,
    required TResult Function() uploadAvatarSuccess,
    required TResult Function(String? message) uploadAvatarFailure,
  }) {
    return userDetailError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? userDetailLoading,
    TResult? Function(UserDetail userDetail)? userDetailLoaded,
    TResult? Function(String? message)? userDetailError,
    TResult? Function()? updateUserLoading,
    TResult? Function()? updateUserSuccess,
    TResult? Function(String? message)? updateUserFailure,
    TResult? Function()? uploadAvatarLoading,
    TResult? Function()? uploadAvatarSuccess,
    TResult? Function(String? message)? uploadAvatarFailure,
  }) {
    return userDetailError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult Function(String? message)? error,
    TResult Function(String? message)? empty,
    TResult Function()? userDetailLoading,
    TResult Function(UserDetail userDetail)? userDetailLoaded,
    TResult Function(String? message)? userDetailError,
    TResult Function()? updateUserLoading,
    TResult Function()? updateUserSuccess,
    TResult Function(String? message)? updateUserFailure,
    TResult Function()? uploadAvatarLoading,
    TResult Function()? uploadAvatarSuccess,
    TResult Function(String? message)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (userDetailError != null) {
      return userDetailError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_UserDetailLoading value) userDetailLoading,
    required TResult Function(_UserDetailLoaded value) userDetailLoaded,
    required TResult Function(_UserDetailError value) userDetailError,
    required TResult Function(_UpdateUserLoading value) updateUserLoading,
    required TResult Function(_UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(_UpdateUserFailure value) updateUserFailure,
    required TResult Function(_UploadAvatarLoading value) uploadAvatarLoading,
    required TResult Function(_UploadAvatarSuccess value) uploadAvatarSuccess,
    required TResult Function(_UploadAvatarFailure value) uploadAvatarFailure,
  }) {
    return userDetailError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_UserDetailLoading value)? userDetailLoading,
    TResult? Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult? Function(_UserDetailError value)? userDetailError,
    TResult? Function(_UpdateUserLoading value)? updateUserLoading,
    TResult? Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(_UpdateUserFailure value)? updateUserFailure,
    TResult? Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult? Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult? Function(_UploadAvatarFailure value)? uploadAvatarFailure,
  }) {
    return userDetailError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_UserDetailLoading value)? userDetailLoading,
    TResult Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult Function(_UserDetailError value)? userDetailError,
    TResult Function(_UpdateUserLoading value)? updateUserLoading,
    TResult Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(_UpdateUserFailure value)? updateUserFailure,
    TResult Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult Function(_UploadAvatarFailure value)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (userDetailError != null) {
      return userDetailError(this);
    }
    return orElse();
  }
}

abstract class _UserDetailError implements UserState {
  const factory _UserDetailError(final String? message) = _$UserDetailErrorImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$UserDetailErrorImplCopyWith<_$UserDetailErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserLoadingImplCopyWith<$Res> {
  factory _$$UpdateUserLoadingImplCopyWith(_$UpdateUserLoadingImpl value,
          $Res Function(_$UpdateUserLoadingImpl) then) =
      __$$UpdateUserLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUserLoadingImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UpdateUserLoadingImpl>
    implements _$$UpdateUserLoadingImplCopyWith<$Res> {
  __$$UpdateUserLoadingImplCopyWithImpl(_$UpdateUserLoadingImpl _value,
      $Res Function(_$UpdateUserLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateUserLoadingImpl implements _UpdateUserLoading {
  const _$UpdateUserLoadingImpl();

  @override
  String toString() {
    return 'UserState.updateUserLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateUserLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> user, bool? hasReachedMax) loaded,
    required TResult Function(String? message) error,
    required TResult Function(String? message) empty,
    required TResult Function() userDetailLoading,
    required TResult Function(UserDetail userDetail) userDetailLoaded,
    required TResult Function(String? message) userDetailError,
    required TResult Function() updateUserLoading,
    required TResult Function() updateUserSuccess,
    required TResult Function(String? message) updateUserFailure,
    required TResult Function() uploadAvatarLoading,
    required TResult Function() uploadAvatarSuccess,
    required TResult Function(String? message) uploadAvatarFailure,
  }) {
    return updateUserLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? userDetailLoading,
    TResult? Function(UserDetail userDetail)? userDetailLoaded,
    TResult? Function(String? message)? userDetailError,
    TResult? Function()? updateUserLoading,
    TResult? Function()? updateUserSuccess,
    TResult? Function(String? message)? updateUserFailure,
    TResult? Function()? uploadAvatarLoading,
    TResult? Function()? uploadAvatarSuccess,
    TResult? Function(String? message)? uploadAvatarFailure,
  }) {
    return updateUserLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult Function(String? message)? error,
    TResult Function(String? message)? empty,
    TResult Function()? userDetailLoading,
    TResult Function(UserDetail userDetail)? userDetailLoaded,
    TResult Function(String? message)? userDetailError,
    TResult Function()? updateUserLoading,
    TResult Function()? updateUserSuccess,
    TResult Function(String? message)? updateUserFailure,
    TResult Function()? uploadAvatarLoading,
    TResult Function()? uploadAvatarSuccess,
    TResult Function(String? message)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (updateUserLoading != null) {
      return updateUserLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_UserDetailLoading value) userDetailLoading,
    required TResult Function(_UserDetailLoaded value) userDetailLoaded,
    required TResult Function(_UserDetailError value) userDetailError,
    required TResult Function(_UpdateUserLoading value) updateUserLoading,
    required TResult Function(_UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(_UpdateUserFailure value) updateUserFailure,
    required TResult Function(_UploadAvatarLoading value) uploadAvatarLoading,
    required TResult Function(_UploadAvatarSuccess value) uploadAvatarSuccess,
    required TResult Function(_UploadAvatarFailure value) uploadAvatarFailure,
  }) {
    return updateUserLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_UserDetailLoading value)? userDetailLoading,
    TResult? Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult? Function(_UserDetailError value)? userDetailError,
    TResult? Function(_UpdateUserLoading value)? updateUserLoading,
    TResult? Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(_UpdateUserFailure value)? updateUserFailure,
    TResult? Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult? Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult? Function(_UploadAvatarFailure value)? uploadAvatarFailure,
  }) {
    return updateUserLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_UserDetailLoading value)? userDetailLoading,
    TResult Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult Function(_UserDetailError value)? userDetailError,
    TResult Function(_UpdateUserLoading value)? updateUserLoading,
    TResult Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(_UpdateUserFailure value)? updateUserFailure,
    TResult Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult Function(_UploadAvatarFailure value)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (updateUserLoading != null) {
      return updateUserLoading(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserLoading implements UserState {
  const factory _UpdateUserLoading() = _$UpdateUserLoadingImpl;
}

/// @nodoc
abstract class _$$UpdateUserSuccessImplCopyWith<$Res> {
  factory _$$UpdateUserSuccessImplCopyWith(_$UpdateUserSuccessImpl value,
          $Res Function(_$UpdateUserSuccessImpl) then) =
      __$$UpdateUserSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUserSuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UpdateUserSuccessImpl>
    implements _$$UpdateUserSuccessImplCopyWith<$Res> {
  __$$UpdateUserSuccessImplCopyWithImpl(_$UpdateUserSuccessImpl _value,
      $Res Function(_$UpdateUserSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateUserSuccessImpl implements _UpdateUserSuccess {
  const _$UpdateUserSuccessImpl();

  @override
  String toString() {
    return 'UserState.updateUserSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateUserSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> user, bool? hasReachedMax) loaded,
    required TResult Function(String? message) error,
    required TResult Function(String? message) empty,
    required TResult Function() userDetailLoading,
    required TResult Function(UserDetail userDetail) userDetailLoaded,
    required TResult Function(String? message) userDetailError,
    required TResult Function() updateUserLoading,
    required TResult Function() updateUserSuccess,
    required TResult Function(String? message) updateUserFailure,
    required TResult Function() uploadAvatarLoading,
    required TResult Function() uploadAvatarSuccess,
    required TResult Function(String? message) uploadAvatarFailure,
  }) {
    return updateUserSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? userDetailLoading,
    TResult? Function(UserDetail userDetail)? userDetailLoaded,
    TResult? Function(String? message)? userDetailError,
    TResult? Function()? updateUserLoading,
    TResult? Function()? updateUserSuccess,
    TResult? Function(String? message)? updateUserFailure,
    TResult? Function()? uploadAvatarLoading,
    TResult? Function()? uploadAvatarSuccess,
    TResult? Function(String? message)? uploadAvatarFailure,
  }) {
    return updateUserSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult Function(String? message)? error,
    TResult Function(String? message)? empty,
    TResult Function()? userDetailLoading,
    TResult Function(UserDetail userDetail)? userDetailLoaded,
    TResult Function(String? message)? userDetailError,
    TResult Function()? updateUserLoading,
    TResult Function()? updateUserSuccess,
    TResult Function(String? message)? updateUserFailure,
    TResult Function()? uploadAvatarLoading,
    TResult Function()? uploadAvatarSuccess,
    TResult Function(String? message)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (updateUserSuccess != null) {
      return updateUserSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_UserDetailLoading value) userDetailLoading,
    required TResult Function(_UserDetailLoaded value) userDetailLoaded,
    required TResult Function(_UserDetailError value) userDetailError,
    required TResult Function(_UpdateUserLoading value) updateUserLoading,
    required TResult Function(_UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(_UpdateUserFailure value) updateUserFailure,
    required TResult Function(_UploadAvatarLoading value) uploadAvatarLoading,
    required TResult Function(_UploadAvatarSuccess value) uploadAvatarSuccess,
    required TResult Function(_UploadAvatarFailure value) uploadAvatarFailure,
  }) {
    return updateUserSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_UserDetailLoading value)? userDetailLoading,
    TResult? Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult? Function(_UserDetailError value)? userDetailError,
    TResult? Function(_UpdateUserLoading value)? updateUserLoading,
    TResult? Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(_UpdateUserFailure value)? updateUserFailure,
    TResult? Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult? Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult? Function(_UploadAvatarFailure value)? uploadAvatarFailure,
  }) {
    return updateUserSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_UserDetailLoading value)? userDetailLoading,
    TResult Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult Function(_UserDetailError value)? userDetailError,
    TResult Function(_UpdateUserLoading value)? updateUserLoading,
    TResult Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(_UpdateUserFailure value)? updateUserFailure,
    TResult Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult Function(_UploadAvatarFailure value)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (updateUserSuccess != null) {
      return updateUserSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserSuccess implements UserState {
  const factory _UpdateUserSuccess() = _$UpdateUserSuccessImpl;
}

/// @nodoc
abstract class _$$UpdateUserFailureImplCopyWith<$Res> {
  factory _$$UpdateUserFailureImplCopyWith(_$UpdateUserFailureImpl value,
          $Res Function(_$UpdateUserFailureImpl) then) =
      __$$UpdateUserFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UpdateUserFailureImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UpdateUserFailureImpl>
    implements _$$UpdateUserFailureImplCopyWith<$Res> {
  __$$UpdateUserFailureImplCopyWithImpl(_$UpdateUserFailureImpl _value,
      $Res Function(_$UpdateUserFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UpdateUserFailureImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateUserFailureImpl implements _UpdateUserFailure {
  const _$UpdateUserFailureImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'UserState.updateUserFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserFailureImplCopyWith<_$UpdateUserFailureImpl> get copyWith =>
      __$$UpdateUserFailureImplCopyWithImpl<_$UpdateUserFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> user, bool? hasReachedMax) loaded,
    required TResult Function(String? message) error,
    required TResult Function(String? message) empty,
    required TResult Function() userDetailLoading,
    required TResult Function(UserDetail userDetail) userDetailLoaded,
    required TResult Function(String? message) userDetailError,
    required TResult Function() updateUserLoading,
    required TResult Function() updateUserSuccess,
    required TResult Function(String? message) updateUserFailure,
    required TResult Function() uploadAvatarLoading,
    required TResult Function() uploadAvatarSuccess,
    required TResult Function(String? message) uploadAvatarFailure,
  }) {
    return updateUserFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? userDetailLoading,
    TResult? Function(UserDetail userDetail)? userDetailLoaded,
    TResult? Function(String? message)? userDetailError,
    TResult? Function()? updateUserLoading,
    TResult? Function()? updateUserSuccess,
    TResult? Function(String? message)? updateUserFailure,
    TResult? Function()? uploadAvatarLoading,
    TResult? Function()? uploadAvatarSuccess,
    TResult? Function(String? message)? uploadAvatarFailure,
  }) {
    return updateUserFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult Function(String? message)? error,
    TResult Function(String? message)? empty,
    TResult Function()? userDetailLoading,
    TResult Function(UserDetail userDetail)? userDetailLoaded,
    TResult Function(String? message)? userDetailError,
    TResult Function()? updateUserLoading,
    TResult Function()? updateUserSuccess,
    TResult Function(String? message)? updateUserFailure,
    TResult Function()? uploadAvatarLoading,
    TResult Function()? uploadAvatarSuccess,
    TResult Function(String? message)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (updateUserFailure != null) {
      return updateUserFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_UserDetailLoading value) userDetailLoading,
    required TResult Function(_UserDetailLoaded value) userDetailLoaded,
    required TResult Function(_UserDetailError value) userDetailError,
    required TResult Function(_UpdateUserLoading value) updateUserLoading,
    required TResult Function(_UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(_UpdateUserFailure value) updateUserFailure,
    required TResult Function(_UploadAvatarLoading value) uploadAvatarLoading,
    required TResult Function(_UploadAvatarSuccess value) uploadAvatarSuccess,
    required TResult Function(_UploadAvatarFailure value) uploadAvatarFailure,
  }) {
    return updateUserFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_UserDetailLoading value)? userDetailLoading,
    TResult? Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult? Function(_UserDetailError value)? userDetailError,
    TResult? Function(_UpdateUserLoading value)? updateUserLoading,
    TResult? Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(_UpdateUserFailure value)? updateUserFailure,
    TResult? Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult? Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult? Function(_UploadAvatarFailure value)? uploadAvatarFailure,
  }) {
    return updateUserFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_UserDetailLoading value)? userDetailLoading,
    TResult Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult Function(_UserDetailError value)? userDetailError,
    TResult Function(_UpdateUserLoading value)? updateUserLoading,
    TResult Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(_UpdateUserFailure value)? updateUserFailure,
    TResult Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult Function(_UploadAvatarFailure value)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (updateUserFailure != null) {
      return updateUserFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserFailure implements UserState {
  const factory _UpdateUserFailure(final String? message) =
      _$UpdateUserFailureImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$UpdateUserFailureImplCopyWith<_$UpdateUserFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadAvatarLoadingImplCopyWith<$Res> {
  factory _$$UploadAvatarLoadingImplCopyWith(_$UploadAvatarLoadingImpl value,
          $Res Function(_$UploadAvatarLoadingImpl) then) =
      __$$UploadAvatarLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadAvatarLoadingImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UploadAvatarLoadingImpl>
    implements _$$UploadAvatarLoadingImplCopyWith<$Res> {
  __$$UploadAvatarLoadingImplCopyWithImpl(_$UploadAvatarLoadingImpl _value,
      $Res Function(_$UploadAvatarLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UploadAvatarLoadingImpl implements _UploadAvatarLoading {
  const _$UploadAvatarLoadingImpl();

  @override
  String toString() {
    return 'UserState.uploadAvatarLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadAvatarLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> user, bool? hasReachedMax) loaded,
    required TResult Function(String? message) error,
    required TResult Function(String? message) empty,
    required TResult Function() userDetailLoading,
    required TResult Function(UserDetail userDetail) userDetailLoaded,
    required TResult Function(String? message) userDetailError,
    required TResult Function() updateUserLoading,
    required TResult Function() updateUserSuccess,
    required TResult Function(String? message) updateUserFailure,
    required TResult Function() uploadAvatarLoading,
    required TResult Function() uploadAvatarSuccess,
    required TResult Function(String? message) uploadAvatarFailure,
  }) {
    return uploadAvatarLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? userDetailLoading,
    TResult? Function(UserDetail userDetail)? userDetailLoaded,
    TResult? Function(String? message)? userDetailError,
    TResult? Function()? updateUserLoading,
    TResult? Function()? updateUserSuccess,
    TResult? Function(String? message)? updateUserFailure,
    TResult? Function()? uploadAvatarLoading,
    TResult? Function()? uploadAvatarSuccess,
    TResult? Function(String? message)? uploadAvatarFailure,
  }) {
    return uploadAvatarLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult Function(String? message)? error,
    TResult Function(String? message)? empty,
    TResult Function()? userDetailLoading,
    TResult Function(UserDetail userDetail)? userDetailLoaded,
    TResult Function(String? message)? userDetailError,
    TResult Function()? updateUserLoading,
    TResult Function()? updateUserSuccess,
    TResult Function(String? message)? updateUserFailure,
    TResult Function()? uploadAvatarLoading,
    TResult Function()? uploadAvatarSuccess,
    TResult Function(String? message)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (uploadAvatarLoading != null) {
      return uploadAvatarLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_UserDetailLoading value) userDetailLoading,
    required TResult Function(_UserDetailLoaded value) userDetailLoaded,
    required TResult Function(_UserDetailError value) userDetailError,
    required TResult Function(_UpdateUserLoading value) updateUserLoading,
    required TResult Function(_UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(_UpdateUserFailure value) updateUserFailure,
    required TResult Function(_UploadAvatarLoading value) uploadAvatarLoading,
    required TResult Function(_UploadAvatarSuccess value) uploadAvatarSuccess,
    required TResult Function(_UploadAvatarFailure value) uploadAvatarFailure,
  }) {
    return uploadAvatarLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_UserDetailLoading value)? userDetailLoading,
    TResult? Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult? Function(_UserDetailError value)? userDetailError,
    TResult? Function(_UpdateUserLoading value)? updateUserLoading,
    TResult? Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(_UpdateUserFailure value)? updateUserFailure,
    TResult? Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult? Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult? Function(_UploadAvatarFailure value)? uploadAvatarFailure,
  }) {
    return uploadAvatarLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_UserDetailLoading value)? userDetailLoading,
    TResult Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult Function(_UserDetailError value)? userDetailError,
    TResult Function(_UpdateUserLoading value)? updateUserLoading,
    TResult Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(_UpdateUserFailure value)? updateUserFailure,
    TResult Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult Function(_UploadAvatarFailure value)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (uploadAvatarLoading != null) {
      return uploadAvatarLoading(this);
    }
    return orElse();
  }
}

abstract class _UploadAvatarLoading implements UserState {
  const factory _UploadAvatarLoading() = _$UploadAvatarLoadingImpl;
}

/// @nodoc
abstract class _$$UploadAvatarSuccessImplCopyWith<$Res> {
  factory _$$UploadAvatarSuccessImplCopyWith(_$UploadAvatarSuccessImpl value,
          $Res Function(_$UploadAvatarSuccessImpl) then) =
      __$$UploadAvatarSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadAvatarSuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UploadAvatarSuccessImpl>
    implements _$$UploadAvatarSuccessImplCopyWith<$Res> {
  __$$UploadAvatarSuccessImplCopyWithImpl(_$UploadAvatarSuccessImpl _value,
      $Res Function(_$UploadAvatarSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UploadAvatarSuccessImpl implements _UploadAvatarSuccess {
  const _$UploadAvatarSuccessImpl();

  @override
  String toString() {
    return 'UserState.uploadAvatarSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadAvatarSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> user, bool? hasReachedMax) loaded,
    required TResult Function(String? message) error,
    required TResult Function(String? message) empty,
    required TResult Function() userDetailLoading,
    required TResult Function(UserDetail userDetail) userDetailLoaded,
    required TResult Function(String? message) userDetailError,
    required TResult Function() updateUserLoading,
    required TResult Function() updateUserSuccess,
    required TResult Function(String? message) updateUserFailure,
    required TResult Function() uploadAvatarLoading,
    required TResult Function() uploadAvatarSuccess,
    required TResult Function(String? message) uploadAvatarFailure,
  }) {
    return uploadAvatarSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? userDetailLoading,
    TResult? Function(UserDetail userDetail)? userDetailLoaded,
    TResult? Function(String? message)? userDetailError,
    TResult? Function()? updateUserLoading,
    TResult? Function()? updateUserSuccess,
    TResult? Function(String? message)? updateUserFailure,
    TResult? Function()? uploadAvatarLoading,
    TResult? Function()? uploadAvatarSuccess,
    TResult? Function(String? message)? uploadAvatarFailure,
  }) {
    return uploadAvatarSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult Function(String? message)? error,
    TResult Function(String? message)? empty,
    TResult Function()? userDetailLoading,
    TResult Function(UserDetail userDetail)? userDetailLoaded,
    TResult Function(String? message)? userDetailError,
    TResult Function()? updateUserLoading,
    TResult Function()? updateUserSuccess,
    TResult Function(String? message)? updateUserFailure,
    TResult Function()? uploadAvatarLoading,
    TResult Function()? uploadAvatarSuccess,
    TResult Function(String? message)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (uploadAvatarSuccess != null) {
      return uploadAvatarSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_UserDetailLoading value) userDetailLoading,
    required TResult Function(_UserDetailLoaded value) userDetailLoaded,
    required TResult Function(_UserDetailError value) userDetailError,
    required TResult Function(_UpdateUserLoading value) updateUserLoading,
    required TResult Function(_UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(_UpdateUserFailure value) updateUserFailure,
    required TResult Function(_UploadAvatarLoading value) uploadAvatarLoading,
    required TResult Function(_UploadAvatarSuccess value) uploadAvatarSuccess,
    required TResult Function(_UploadAvatarFailure value) uploadAvatarFailure,
  }) {
    return uploadAvatarSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_UserDetailLoading value)? userDetailLoading,
    TResult? Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult? Function(_UserDetailError value)? userDetailError,
    TResult? Function(_UpdateUserLoading value)? updateUserLoading,
    TResult? Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(_UpdateUserFailure value)? updateUserFailure,
    TResult? Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult? Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult? Function(_UploadAvatarFailure value)? uploadAvatarFailure,
  }) {
    return uploadAvatarSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_UserDetailLoading value)? userDetailLoading,
    TResult Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult Function(_UserDetailError value)? userDetailError,
    TResult Function(_UpdateUserLoading value)? updateUserLoading,
    TResult Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(_UpdateUserFailure value)? updateUserFailure,
    TResult Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult Function(_UploadAvatarFailure value)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (uploadAvatarSuccess != null) {
      return uploadAvatarSuccess(this);
    }
    return orElse();
  }
}

abstract class _UploadAvatarSuccess implements UserState {
  const factory _UploadAvatarSuccess() = _$UploadAvatarSuccessImpl;
}

/// @nodoc
abstract class _$$UploadAvatarFailureImplCopyWith<$Res> {
  factory _$$UploadAvatarFailureImplCopyWith(_$UploadAvatarFailureImpl value,
          $Res Function(_$UploadAvatarFailureImpl) then) =
      __$$UploadAvatarFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UploadAvatarFailureImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UploadAvatarFailureImpl>
    implements _$$UploadAvatarFailureImplCopyWith<$Res> {
  __$$UploadAvatarFailureImplCopyWithImpl(_$UploadAvatarFailureImpl _value,
      $Res Function(_$UploadAvatarFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UploadAvatarFailureImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UploadAvatarFailureImpl implements _UploadAvatarFailure {
  const _$UploadAvatarFailureImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'UserState.uploadAvatarFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadAvatarFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadAvatarFailureImplCopyWith<_$UploadAvatarFailureImpl> get copyWith =>
      __$$UploadAvatarFailureImplCopyWithImpl<_$UploadAvatarFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> user, bool? hasReachedMax) loaded,
    required TResult Function(String? message) error,
    required TResult Function(String? message) empty,
    required TResult Function() userDetailLoading,
    required TResult Function(UserDetail userDetail) userDetailLoaded,
    required TResult Function(String? message) userDetailError,
    required TResult Function() updateUserLoading,
    required TResult Function() updateUserSuccess,
    required TResult Function(String? message) updateUserFailure,
    required TResult Function() uploadAvatarLoading,
    required TResult Function() uploadAvatarSuccess,
    required TResult Function(String? message) uploadAvatarFailure,
  }) {
    return uploadAvatarFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? userDetailLoading,
    TResult? Function(UserDetail userDetail)? userDetailLoaded,
    TResult? Function(String? message)? userDetailError,
    TResult? Function()? updateUserLoading,
    TResult? Function()? updateUserSuccess,
    TResult? Function(String? message)? updateUserFailure,
    TResult? Function()? uploadAvatarLoading,
    TResult? Function()? uploadAvatarSuccess,
    TResult? Function(String? message)? uploadAvatarFailure,
  }) {
    return uploadAvatarFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> user, bool? hasReachedMax)? loaded,
    TResult Function(String? message)? error,
    TResult Function(String? message)? empty,
    TResult Function()? userDetailLoading,
    TResult Function(UserDetail userDetail)? userDetailLoaded,
    TResult Function(String? message)? userDetailError,
    TResult Function()? updateUserLoading,
    TResult Function()? updateUserSuccess,
    TResult Function(String? message)? updateUserFailure,
    TResult Function()? uploadAvatarLoading,
    TResult Function()? uploadAvatarSuccess,
    TResult Function(String? message)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (uploadAvatarFailure != null) {
      return uploadAvatarFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_UserDetailLoading value) userDetailLoading,
    required TResult Function(_UserDetailLoaded value) userDetailLoaded,
    required TResult Function(_UserDetailError value) userDetailError,
    required TResult Function(_UpdateUserLoading value) updateUserLoading,
    required TResult Function(_UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(_UpdateUserFailure value) updateUserFailure,
    required TResult Function(_UploadAvatarLoading value) uploadAvatarLoading,
    required TResult Function(_UploadAvatarSuccess value) uploadAvatarSuccess,
    required TResult Function(_UploadAvatarFailure value) uploadAvatarFailure,
  }) {
    return uploadAvatarFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_UserDetailLoading value)? userDetailLoading,
    TResult? Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult? Function(_UserDetailError value)? userDetailError,
    TResult? Function(_UpdateUserLoading value)? updateUserLoading,
    TResult? Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(_UpdateUserFailure value)? updateUserFailure,
    TResult? Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult? Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult? Function(_UploadAvatarFailure value)? uploadAvatarFailure,
  }) {
    return uploadAvatarFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_UserDetailLoading value)? userDetailLoading,
    TResult Function(_UserDetailLoaded value)? userDetailLoaded,
    TResult Function(_UserDetailError value)? userDetailError,
    TResult Function(_UpdateUserLoading value)? updateUserLoading,
    TResult Function(_UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(_UpdateUserFailure value)? updateUserFailure,
    TResult Function(_UploadAvatarLoading value)? uploadAvatarLoading,
    TResult Function(_UploadAvatarSuccess value)? uploadAvatarSuccess,
    TResult Function(_UploadAvatarFailure value)? uploadAvatarFailure,
    required TResult orElse(),
  }) {
    if (uploadAvatarFailure != null) {
      return uploadAvatarFailure(this);
    }
    return orElse();
  }
}

abstract class _UploadAvatarFailure implements UserState {
  const factory _UploadAvatarFailure(final String? message) =
      _$UploadAvatarFailureImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$UploadAvatarFailureImplCopyWith<_$UploadAvatarFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
