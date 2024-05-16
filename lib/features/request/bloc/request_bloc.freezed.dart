// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(String requestId, String poCode)
        fetchRelateInformation,
    required TResult Function(String status, String title)
        fetchRequestsByStatusAndTitle,
    required TResult Function(List<String> statuses) fetchRequestsByStatuses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(String requestId, String poCode)? fetchRelateInformation,
    TResult? Function(String status, String title)?
        fetchRequestsByStatusAndTitle,
    TResult? Function(List<String> statuses)? fetchRequestsByStatuses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(String requestId, String poCode)? fetchRelateInformation,
    TResult Function(String status, String title)?
        fetchRequestsByStatusAndTitle,
    TResult Function(List<String> statuses)? fetchRequestsByStatuses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_FetchRelateInformation value)
        fetchRelateInformation,
    required TResult Function(_FetchRequestsByStatusAndTitle value)
        fetchRequestsByStatusAndTitle,
    required TResult Function(_FetchRequestsByStatuses value)
        fetchRequestsByStatuses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_FetchRelateInformation value)? fetchRelateInformation,
    TResult? Function(_FetchRequestsByStatusAndTitle value)?
        fetchRequestsByStatusAndTitle,
    TResult? Function(_FetchRequestsByStatuses value)? fetchRequestsByStatuses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_FetchRelateInformation value)? fetchRelateInformation,
    TResult Function(_FetchRequestsByStatusAndTitle value)?
        fetchRequestsByStatusAndTitle,
    TResult Function(_FetchRequestsByStatuses value)? fetchRequestsByStatuses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestEventCopyWith<$Res> {
  factory $RequestEventCopyWith(
          RequestEvent value, $Res Function(RequestEvent) then) =
      _$RequestEventCopyWithImpl<$Res, RequestEvent>;
}

/// @nodoc
class _$RequestEventCopyWithImpl<$Res, $Val extends RequestEvent>
    implements $RequestEventCopyWith<$Res> {
  _$RequestEventCopyWithImpl(this._value, this._then);

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
    extends _$RequestEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'RequestEvent.started()';
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
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(String requestId, String poCode)
        fetchRelateInformation,
    required TResult Function(String status, String title)
        fetchRequestsByStatusAndTitle,
    required TResult Function(List<String> statuses) fetchRequestsByStatuses,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(String requestId, String poCode)? fetchRelateInformation,
    TResult? Function(String status, String title)?
        fetchRequestsByStatusAndTitle,
    TResult? Function(List<String> statuses)? fetchRequestsByStatuses,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(String requestId, String poCode)? fetchRelateInformation,
    TResult Function(String status, String title)?
        fetchRequestsByStatusAndTitle,
    TResult Function(List<String> statuses)? fetchRequestsByStatuses,
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
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_FetchRelateInformation value)
        fetchRelateInformation,
    required TResult Function(_FetchRequestsByStatusAndTitle value)
        fetchRequestsByStatusAndTitle,
    required TResult Function(_FetchRequestsByStatuses value)
        fetchRequestsByStatuses,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_FetchRelateInformation value)? fetchRelateInformation,
    TResult? Function(_FetchRequestsByStatusAndTitle value)?
        fetchRequestsByStatusAndTitle,
    TResult? Function(_FetchRequestsByStatuses value)? fetchRequestsByStatuses,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_FetchRelateInformation value)? fetchRelateInformation,
    TResult Function(_FetchRequestsByStatusAndTitle value)?
        fetchRequestsByStatusAndTitle,
    TResult Function(_FetchRequestsByStatuses value)? fetchRequestsByStatuses,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RequestEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadMoreImplCopyWith<$Res> {
  factory _$$LoadMoreImplCopyWith(
          _$LoadMoreImpl value, $Res Function(_$LoadMoreImpl) then) =
      __$$LoadMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreImplCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res, _$LoadMoreImpl>
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
    return 'RequestEvent.loadMore()';
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
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(String requestId, String poCode)
        fetchRelateInformation,
    required TResult Function(String status, String title)
        fetchRequestsByStatusAndTitle,
    required TResult Function(List<String> statuses) fetchRequestsByStatuses,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(String requestId, String poCode)? fetchRelateInformation,
    TResult? Function(String status, String title)?
        fetchRequestsByStatusAndTitle,
    TResult? Function(List<String> statuses)? fetchRequestsByStatuses,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(String requestId, String poCode)? fetchRelateInformation,
    TResult Function(String status, String title)?
        fetchRequestsByStatusAndTitle,
    TResult Function(List<String> statuses)? fetchRequestsByStatuses,
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
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_FetchRelateInformation value)
        fetchRelateInformation,
    required TResult Function(_FetchRequestsByStatusAndTitle value)
        fetchRequestsByStatusAndTitle,
    required TResult Function(_FetchRequestsByStatuses value)
        fetchRequestsByStatuses,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_FetchRelateInformation value)? fetchRelateInformation,
    TResult? Function(_FetchRequestsByStatusAndTitle value)?
        fetchRequestsByStatusAndTitle,
    TResult? Function(_FetchRequestsByStatuses value)? fetchRequestsByStatuses,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_FetchRelateInformation value)? fetchRelateInformation,
    TResult Function(_FetchRequestsByStatusAndTitle value)?
        fetchRequestsByStatusAndTitle,
    TResult Function(_FetchRequestsByStatuses value)? fetchRequestsByStatuses,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements RequestEvent {
  const factory _LoadMore() = _$LoadMoreImpl;
}

/// @nodoc
abstract class _$$RefreshImplCopyWith<$Res> {
  factory _$$RefreshImplCopyWith(
          _$RefreshImpl value, $Res Function(_$RefreshImpl) then) =
      __$$RefreshImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshImplCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res, _$RefreshImpl>
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
    return 'RequestEvent.refresh()';
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
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(String requestId, String poCode)
        fetchRelateInformation,
    required TResult Function(String status, String title)
        fetchRequestsByStatusAndTitle,
    required TResult Function(List<String> statuses) fetchRequestsByStatuses,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(String requestId, String poCode)? fetchRelateInformation,
    TResult? Function(String status, String title)?
        fetchRequestsByStatusAndTitle,
    TResult? Function(List<String> statuses)? fetchRequestsByStatuses,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(String requestId, String poCode)? fetchRelateInformation,
    TResult Function(String status, String title)?
        fetchRequestsByStatusAndTitle,
    TResult Function(List<String> statuses)? fetchRequestsByStatuses,
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
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_FetchRelateInformation value)
        fetchRelateInformation,
    required TResult Function(_FetchRequestsByStatusAndTitle value)
        fetchRequestsByStatusAndTitle,
    required TResult Function(_FetchRequestsByStatuses value)
        fetchRequestsByStatuses,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_FetchRelateInformation value)? fetchRelateInformation,
    TResult? Function(_FetchRequestsByStatusAndTitle value)?
        fetchRequestsByStatusAndTitle,
    TResult? Function(_FetchRequestsByStatuses value)? fetchRequestsByStatuses,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_FetchRelateInformation value)? fetchRelateInformation,
    TResult Function(_FetchRequestsByStatusAndTitle value)?
        fetchRequestsByStatusAndTitle,
    TResult Function(_FetchRequestsByStatuses value)? fetchRequestsByStatuses,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements RequestEvent {
  const factory _Refresh() = _$RefreshImpl;
}

/// @nodoc
abstract class _$$FetchRelateInformationImplCopyWith<$Res> {
  factory _$$FetchRelateInformationImplCopyWith(
          _$FetchRelateInformationImpl value,
          $Res Function(_$FetchRelateInformationImpl) then) =
      __$$FetchRelateInformationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String requestId, String poCode});
}

/// @nodoc
class __$$FetchRelateInformationImplCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res, _$FetchRelateInformationImpl>
    implements _$$FetchRelateInformationImplCopyWith<$Res> {
  __$$FetchRelateInformationImplCopyWithImpl(
      _$FetchRelateInformationImpl _value,
      $Res Function(_$FetchRelateInformationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? poCode = null,
  }) {
    return _then(_$FetchRelateInformationImpl(
      null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      null == poCode
          ? _value.poCode
          : poCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchRelateInformationImpl implements _FetchRelateInformation {
  const _$FetchRelateInformationImpl(this.requestId, this.poCode);

  @override
  final String requestId;
  @override
  final String poCode;

  @override
  String toString() {
    return 'RequestEvent.fetchRelateInformation(requestId: $requestId, poCode: $poCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRelateInformationImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.poCode, poCode) || other.poCode == poCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, poCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchRelateInformationImplCopyWith<_$FetchRelateInformationImpl>
      get copyWith => __$$FetchRelateInformationImplCopyWithImpl<
          _$FetchRelateInformationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(String requestId, String poCode)
        fetchRelateInformation,
    required TResult Function(String status, String title)
        fetchRequestsByStatusAndTitle,
    required TResult Function(List<String> statuses) fetchRequestsByStatuses,
  }) {
    return fetchRelateInformation(requestId, poCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(String requestId, String poCode)? fetchRelateInformation,
    TResult? Function(String status, String title)?
        fetchRequestsByStatusAndTitle,
    TResult? Function(List<String> statuses)? fetchRequestsByStatuses,
  }) {
    return fetchRelateInformation?.call(requestId, poCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(String requestId, String poCode)? fetchRelateInformation,
    TResult Function(String status, String title)?
        fetchRequestsByStatusAndTitle,
    TResult Function(List<String> statuses)? fetchRequestsByStatuses,
    required TResult orElse(),
  }) {
    if (fetchRelateInformation != null) {
      return fetchRelateInformation(requestId, poCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_FetchRelateInformation value)
        fetchRelateInformation,
    required TResult Function(_FetchRequestsByStatusAndTitle value)
        fetchRequestsByStatusAndTitle,
    required TResult Function(_FetchRequestsByStatuses value)
        fetchRequestsByStatuses,
  }) {
    return fetchRelateInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_FetchRelateInformation value)? fetchRelateInformation,
    TResult? Function(_FetchRequestsByStatusAndTitle value)?
        fetchRequestsByStatusAndTitle,
    TResult? Function(_FetchRequestsByStatuses value)? fetchRequestsByStatuses,
  }) {
    return fetchRelateInformation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_FetchRelateInformation value)? fetchRelateInformation,
    TResult Function(_FetchRequestsByStatusAndTitle value)?
        fetchRequestsByStatusAndTitle,
    TResult Function(_FetchRequestsByStatuses value)? fetchRequestsByStatuses,
    required TResult orElse(),
  }) {
    if (fetchRelateInformation != null) {
      return fetchRelateInformation(this);
    }
    return orElse();
  }
}

abstract class _FetchRelateInformation implements RequestEvent {
  const factory _FetchRelateInformation(
          final String requestId, final String poCode) =
      _$FetchRelateInformationImpl;

  String get requestId;
  String get poCode;
  @JsonKey(ignore: true)
  _$$FetchRelateInformationImplCopyWith<_$FetchRelateInformationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchRequestsByStatusAndTitleImplCopyWith<$Res> {
  factory _$$FetchRequestsByStatusAndTitleImplCopyWith(
          _$FetchRequestsByStatusAndTitleImpl value,
          $Res Function(_$FetchRequestsByStatusAndTitleImpl) then) =
      __$$FetchRequestsByStatusAndTitleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String status, String title});
}

/// @nodoc
class __$$FetchRequestsByStatusAndTitleImplCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res,
        _$FetchRequestsByStatusAndTitleImpl>
    implements _$$FetchRequestsByStatusAndTitleImplCopyWith<$Res> {
  __$$FetchRequestsByStatusAndTitleImplCopyWithImpl(
      _$FetchRequestsByStatusAndTitleImpl _value,
      $Res Function(_$FetchRequestsByStatusAndTitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? title = null,
  }) {
    return _then(_$FetchRequestsByStatusAndTitleImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchRequestsByStatusAndTitleImpl
    implements _FetchRequestsByStatusAndTitle {
  const _$FetchRequestsByStatusAndTitleImpl(this.status, this.title);

  @override
  final String status;
  @override
  final String title;

  @override
  String toString() {
    return 'RequestEvent.fetchRequestsByStatusAndTitle(status: $status, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRequestsByStatusAndTitleImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchRequestsByStatusAndTitleImplCopyWith<
          _$FetchRequestsByStatusAndTitleImpl>
      get copyWith => __$$FetchRequestsByStatusAndTitleImplCopyWithImpl<
          _$FetchRequestsByStatusAndTitleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(String requestId, String poCode)
        fetchRelateInformation,
    required TResult Function(String status, String title)
        fetchRequestsByStatusAndTitle,
    required TResult Function(List<String> statuses) fetchRequestsByStatuses,
  }) {
    return fetchRequestsByStatusAndTitle(status, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(String requestId, String poCode)? fetchRelateInformation,
    TResult? Function(String status, String title)?
        fetchRequestsByStatusAndTitle,
    TResult? Function(List<String> statuses)? fetchRequestsByStatuses,
  }) {
    return fetchRequestsByStatusAndTitle?.call(status, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(String requestId, String poCode)? fetchRelateInformation,
    TResult Function(String status, String title)?
        fetchRequestsByStatusAndTitle,
    TResult Function(List<String> statuses)? fetchRequestsByStatuses,
    required TResult orElse(),
  }) {
    if (fetchRequestsByStatusAndTitle != null) {
      return fetchRequestsByStatusAndTitle(status, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_FetchRelateInformation value)
        fetchRelateInformation,
    required TResult Function(_FetchRequestsByStatusAndTitle value)
        fetchRequestsByStatusAndTitle,
    required TResult Function(_FetchRequestsByStatuses value)
        fetchRequestsByStatuses,
  }) {
    return fetchRequestsByStatusAndTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_FetchRelateInformation value)? fetchRelateInformation,
    TResult? Function(_FetchRequestsByStatusAndTitle value)?
        fetchRequestsByStatusAndTitle,
    TResult? Function(_FetchRequestsByStatuses value)? fetchRequestsByStatuses,
  }) {
    return fetchRequestsByStatusAndTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_FetchRelateInformation value)? fetchRelateInformation,
    TResult Function(_FetchRequestsByStatusAndTitle value)?
        fetchRequestsByStatusAndTitle,
    TResult Function(_FetchRequestsByStatuses value)? fetchRequestsByStatuses,
    required TResult orElse(),
  }) {
    if (fetchRequestsByStatusAndTitle != null) {
      return fetchRequestsByStatusAndTitle(this);
    }
    return orElse();
  }
}

abstract class _FetchRequestsByStatusAndTitle implements RequestEvent {
  const factory _FetchRequestsByStatusAndTitle(
          final String status, final String title) =
      _$FetchRequestsByStatusAndTitleImpl;

  String get status;
  String get title;
  @JsonKey(ignore: true)
  _$$FetchRequestsByStatusAndTitleImplCopyWith<
          _$FetchRequestsByStatusAndTitleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchRequestsByStatusesImplCopyWith<$Res> {
  factory _$$FetchRequestsByStatusesImplCopyWith(
          _$FetchRequestsByStatusesImpl value,
          $Res Function(_$FetchRequestsByStatusesImpl) then) =
      __$$FetchRequestsByStatusesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> statuses});
}

/// @nodoc
class __$$FetchRequestsByStatusesImplCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res, _$FetchRequestsByStatusesImpl>
    implements _$$FetchRequestsByStatusesImplCopyWith<$Res> {
  __$$FetchRequestsByStatusesImplCopyWithImpl(
      _$FetchRequestsByStatusesImpl _value,
      $Res Function(_$FetchRequestsByStatusesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statuses = null,
  }) {
    return _then(_$FetchRequestsByStatusesImpl(
      null == statuses
          ? _value._statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$FetchRequestsByStatusesImpl implements _FetchRequestsByStatuses {
  const _$FetchRequestsByStatusesImpl(final List<String> statuses)
      : _statuses = statuses;

  final List<String> _statuses;
  @override
  List<String> get statuses {
    if (_statuses is EqualUnmodifiableListView) return _statuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statuses);
  }

  @override
  String toString() {
    return 'RequestEvent.fetchRequestsByStatuses(statuses: $statuses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRequestsByStatusesImpl &&
            const DeepCollectionEquality().equals(other._statuses, _statuses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_statuses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchRequestsByStatusesImplCopyWith<_$FetchRequestsByStatusesImpl>
      get copyWith => __$$FetchRequestsByStatusesImplCopyWithImpl<
          _$FetchRequestsByStatusesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(String requestId, String poCode)
        fetchRelateInformation,
    required TResult Function(String status, String title)
        fetchRequestsByStatusAndTitle,
    required TResult Function(List<String> statuses) fetchRequestsByStatuses,
  }) {
    return fetchRequestsByStatuses(statuses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(String requestId, String poCode)? fetchRelateInformation,
    TResult? Function(String status, String title)?
        fetchRequestsByStatusAndTitle,
    TResult? Function(List<String> statuses)? fetchRequestsByStatuses,
  }) {
    return fetchRequestsByStatuses?.call(statuses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(String requestId, String poCode)? fetchRelateInformation,
    TResult Function(String status, String title)?
        fetchRequestsByStatusAndTitle,
    TResult Function(List<String> statuses)? fetchRequestsByStatuses,
    required TResult orElse(),
  }) {
    if (fetchRequestsByStatuses != null) {
      return fetchRequestsByStatuses(statuses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_FetchRelateInformation value)
        fetchRelateInformation,
    required TResult Function(_FetchRequestsByStatusAndTitle value)
        fetchRequestsByStatusAndTitle,
    required TResult Function(_FetchRequestsByStatuses value)
        fetchRequestsByStatuses,
  }) {
    return fetchRequestsByStatuses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_FetchRelateInformation value)? fetchRelateInformation,
    TResult? Function(_FetchRequestsByStatusAndTitle value)?
        fetchRequestsByStatusAndTitle,
    TResult? Function(_FetchRequestsByStatuses value)? fetchRequestsByStatuses,
  }) {
    return fetchRequestsByStatuses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_FetchRelateInformation value)? fetchRelateInformation,
    TResult Function(_FetchRequestsByStatusAndTitle value)?
        fetchRequestsByStatusAndTitle,
    TResult Function(_FetchRequestsByStatuses value)? fetchRequestsByStatuses,
    required TResult orElse(),
  }) {
    if (fetchRequestsByStatuses != null) {
      return fetchRequestsByStatuses(this);
    }
    return orElse();
  }
}

abstract class _FetchRequestsByStatuses implements RequestEvent {
  const factory _FetchRequestsByStatuses(final List<String> statuses) =
      _$FetchRequestsByStatusesImpl;

  List<String> get statuses;
  @JsonKey(ignore: true)
  _$$FetchRequestsByStatusesImplCopyWith<_$FetchRequestsByStatusesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Request> requests, bool hasReachedMax)
        loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function(List<Request> requests)
        requestsByStatusAndTitleLoaded,
    required TResult Function() requestsByStatusAndTitleLoading,
    required TResult Function(String? error) requestsByStatusAndTitleError,
    required TResult Function(String? message) requestsByStatusAndTitleEmpty,
    required TResult Function() requestsByStatusesLoading,
    required TResult Function(List<Request> requests) requestsByStatusesLoaded,
    required TResult Function(String? error) requestsByStatusesError,
    required TResult Function(String? message) requestsByStatusesEmpty,
    required TResult Function() relateInformationLoading,
    required TResult Function(List<RelateInformation> relateInformation)
        relateInformationLoaded,
    required TResult Function(String? error) relateInformationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult? Function()? requestsByStatusAndTitleLoading,
    TResult? Function(String? error)? requestsByStatusAndTitleError,
    TResult? Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult? Function()? requestsByStatusesLoading,
    TResult? Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult? Function(String? error)? requestsByStatusesError,
    TResult? Function(String? message)? requestsByStatusesEmpty,
    TResult? Function()? relateInformationLoading,
    TResult? Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult? Function(String? error)? relateInformationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult Function()? requestsByStatusAndTitleLoading,
    TResult Function(String? error)? requestsByStatusAndTitleError,
    TResult Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult Function()? requestsByStatusesLoading,
    TResult Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult Function(String? error)? requestsByStatusesError,
    TResult Function(String? message)? requestsByStatusesEmpty,
    TResult Function()? relateInformationLoading,
    TResult Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult Function(String? error)? relateInformationError,
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
    required TResult Function(_RequestsByStatusAndTitleLoaded value)
        requestsByStatusAndTitleLoaded,
    required TResult Function(_RequestsByStatusAndTitleLoading value)
        requestsByStatusAndTitleLoading,
    required TResult Function(_RequestsByStatusAndTitleError value)
        requestsByStatusAndTitleError,
    required TResult Function(_RequestsByStatusAndTitleEmpty value)
        requestsByStatusAndTitleEmpty,
    required TResult Function(_RequestsByStatusesLoading value)
        requestsByStatusesLoading,
    required TResult Function(_RequestsByStatusesLoaded value)
        requestsByStatusesLoaded,
    required TResult Function(_RequestsByStatusesError value)
        requestsByStatusesError,
    required TResult Function(_RequestsByStatusesEmpty value)
        requestsByStatusesEmpty,
    required TResult Function(_RelateInformationLoading value)
        relateInformationLoading,
    required TResult Function(_RelateInformationLoaded value)
        relateInformationLoaded,
    required TResult Function(_RelateInformationError value)
        relateInformationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult? Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult? Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult? Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult? Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult? Function(_RequestsByStatusesLoaded value)?
        requestsByStatusesLoaded,
    TResult? Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult? Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult? Function(_RelateInformationLoading value)?
        relateInformationLoading,
    TResult? Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult? Function(_RelateInformationError value)? relateInformationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult Function(_RequestsByStatusesLoaded value)? requestsByStatusesLoaded,
    TResult Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult Function(_RelateInformationLoading value)? relateInformationLoading,
    TResult Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult Function(_RelateInformationError value)? relateInformationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStateCopyWith<$Res> {
  factory $RequestStateCopyWith(
          RequestState value, $Res Function(RequestState) then) =
      _$RequestStateCopyWithImpl<$Res, RequestState>;
}

/// @nodoc
class _$RequestStateCopyWithImpl<$Res, $Val extends RequestState>
    implements $RequestStateCopyWith<$Res> {
  _$RequestStateCopyWithImpl(this._value, this._then);

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
    extends _$RequestStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'RequestState.initial()';
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
    required TResult Function(List<Request> requests, bool hasReachedMax)
        loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function(List<Request> requests)
        requestsByStatusAndTitleLoaded,
    required TResult Function() requestsByStatusAndTitleLoading,
    required TResult Function(String? error) requestsByStatusAndTitleError,
    required TResult Function(String? message) requestsByStatusAndTitleEmpty,
    required TResult Function() requestsByStatusesLoading,
    required TResult Function(List<Request> requests) requestsByStatusesLoaded,
    required TResult Function(String? error) requestsByStatusesError,
    required TResult Function(String? message) requestsByStatusesEmpty,
    required TResult Function() relateInformationLoading,
    required TResult Function(List<RelateInformation> relateInformation)
        relateInformationLoaded,
    required TResult Function(String? error) relateInformationError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult? Function()? requestsByStatusAndTitleLoading,
    TResult? Function(String? error)? requestsByStatusAndTitleError,
    TResult? Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult? Function()? requestsByStatusesLoading,
    TResult? Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult? Function(String? error)? requestsByStatusesError,
    TResult? Function(String? message)? requestsByStatusesEmpty,
    TResult? Function()? relateInformationLoading,
    TResult? Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult? Function(String? error)? relateInformationError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult Function()? requestsByStatusAndTitleLoading,
    TResult Function(String? error)? requestsByStatusAndTitleError,
    TResult Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult Function()? requestsByStatusesLoading,
    TResult Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult Function(String? error)? requestsByStatusesError,
    TResult Function(String? message)? requestsByStatusesEmpty,
    TResult Function()? relateInformationLoading,
    TResult Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult Function(String? error)? relateInformationError,
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
    required TResult Function(_RequestsByStatusAndTitleLoaded value)
        requestsByStatusAndTitleLoaded,
    required TResult Function(_RequestsByStatusAndTitleLoading value)
        requestsByStatusAndTitleLoading,
    required TResult Function(_RequestsByStatusAndTitleError value)
        requestsByStatusAndTitleError,
    required TResult Function(_RequestsByStatusAndTitleEmpty value)
        requestsByStatusAndTitleEmpty,
    required TResult Function(_RequestsByStatusesLoading value)
        requestsByStatusesLoading,
    required TResult Function(_RequestsByStatusesLoaded value)
        requestsByStatusesLoaded,
    required TResult Function(_RequestsByStatusesError value)
        requestsByStatusesError,
    required TResult Function(_RequestsByStatusesEmpty value)
        requestsByStatusesEmpty,
    required TResult Function(_RelateInformationLoading value)
        relateInformationLoading,
    required TResult Function(_RelateInformationLoaded value)
        relateInformationLoaded,
    required TResult Function(_RelateInformationError value)
        relateInformationError,
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
    TResult? Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult? Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult? Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult? Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult? Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult? Function(_RequestsByStatusesLoaded value)?
        requestsByStatusesLoaded,
    TResult? Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult? Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult? Function(_RelateInformationLoading value)?
        relateInformationLoading,
    TResult? Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult? Function(_RelateInformationError value)? relateInformationError,
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
    TResult Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult Function(_RequestsByStatusesLoaded value)? requestsByStatusesLoaded,
    TResult Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult Function(_RelateInformationLoading value)? relateInformationLoading,
    TResult Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult Function(_RelateInformationError value)? relateInformationError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RequestState {
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
    extends _$RequestStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'RequestState.loading()';
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
    required TResult Function(List<Request> requests, bool hasReachedMax)
        loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function(List<Request> requests)
        requestsByStatusAndTitleLoaded,
    required TResult Function() requestsByStatusAndTitleLoading,
    required TResult Function(String? error) requestsByStatusAndTitleError,
    required TResult Function(String? message) requestsByStatusAndTitleEmpty,
    required TResult Function() requestsByStatusesLoading,
    required TResult Function(List<Request> requests) requestsByStatusesLoaded,
    required TResult Function(String? error) requestsByStatusesError,
    required TResult Function(String? message) requestsByStatusesEmpty,
    required TResult Function() relateInformationLoading,
    required TResult Function(List<RelateInformation> relateInformation)
        relateInformationLoaded,
    required TResult Function(String? error) relateInformationError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult? Function()? requestsByStatusAndTitleLoading,
    TResult? Function(String? error)? requestsByStatusAndTitleError,
    TResult? Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult? Function()? requestsByStatusesLoading,
    TResult? Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult? Function(String? error)? requestsByStatusesError,
    TResult? Function(String? message)? requestsByStatusesEmpty,
    TResult? Function()? relateInformationLoading,
    TResult? Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult? Function(String? error)? relateInformationError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult Function()? requestsByStatusAndTitleLoading,
    TResult Function(String? error)? requestsByStatusAndTitleError,
    TResult Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult Function()? requestsByStatusesLoading,
    TResult Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult Function(String? error)? requestsByStatusesError,
    TResult Function(String? message)? requestsByStatusesEmpty,
    TResult Function()? relateInformationLoading,
    TResult Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult Function(String? error)? relateInformationError,
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
    required TResult Function(_RequestsByStatusAndTitleLoaded value)
        requestsByStatusAndTitleLoaded,
    required TResult Function(_RequestsByStatusAndTitleLoading value)
        requestsByStatusAndTitleLoading,
    required TResult Function(_RequestsByStatusAndTitleError value)
        requestsByStatusAndTitleError,
    required TResult Function(_RequestsByStatusAndTitleEmpty value)
        requestsByStatusAndTitleEmpty,
    required TResult Function(_RequestsByStatusesLoading value)
        requestsByStatusesLoading,
    required TResult Function(_RequestsByStatusesLoaded value)
        requestsByStatusesLoaded,
    required TResult Function(_RequestsByStatusesError value)
        requestsByStatusesError,
    required TResult Function(_RequestsByStatusesEmpty value)
        requestsByStatusesEmpty,
    required TResult Function(_RelateInformationLoading value)
        relateInformationLoading,
    required TResult Function(_RelateInformationLoaded value)
        relateInformationLoaded,
    required TResult Function(_RelateInformationError value)
        relateInformationError,
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
    TResult? Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult? Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult? Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult? Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult? Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult? Function(_RequestsByStatusesLoaded value)?
        requestsByStatusesLoaded,
    TResult? Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult? Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult? Function(_RelateInformationLoading value)?
        relateInformationLoading,
    TResult? Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult? Function(_RelateInformationError value)? relateInformationError,
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
    TResult Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult Function(_RequestsByStatusesLoaded value)? requestsByStatusesLoaded,
    TResult Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult Function(_RelateInformationLoading value)? relateInformationLoading,
    TResult Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult Function(_RelateInformationError value)? relateInformationError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RequestState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Request> requests, bool hasReachedMax});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requests = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$LoadedImpl(
      requests: null == requests
          ? _value._requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<Request>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required final List<Request> requests, required this.hasReachedMax})
      : _requests = requests;

  final List<Request> _requests;
  @override
  List<Request> get requests {
    if (_requests is EqualUnmodifiableListView) return _requests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requests);
  }

  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'RequestState.loaded(requests: $requests, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._requests, _requests) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_requests), hasReachedMax);

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
    required TResult Function(List<Request> requests, bool hasReachedMax)
        loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function(List<Request> requests)
        requestsByStatusAndTitleLoaded,
    required TResult Function() requestsByStatusAndTitleLoading,
    required TResult Function(String? error) requestsByStatusAndTitleError,
    required TResult Function(String? message) requestsByStatusAndTitleEmpty,
    required TResult Function() requestsByStatusesLoading,
    required TResult Function(List<Request> requests) requestsByStatusesLoaded,
    required TResult Function(String? error) requestsByStatusesError,
    required TResult Function(String? message) requestsByStatusesEmpty,
    required TResult Function() relateInformationLoading,
    required TResult Function(List<RelateInformation> relateInformation)
        relateInformationLoaded,
    required TResult Function(String? error) relateInformationError,
  }) {
    return loaded(requests, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult? Function()? requestsByStatusAndTitleLoading,
    TResult? Function(String? error)? requestsByStatusAndTitleError,
    TResult? Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult? Function()? requestsByStatusesLoading,
    TResult? Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult? Function(String? error)? requestsByStatusesError,
    TResult? Function(String? message)? requestsByStatusesEmpty,
    TResult? Function()? relateInformationLoading,
    TResult? Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult? Function(String? error)? relateInformationError,
  }) {
    return loaded?.call(requests, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult Function()? requestsByStatusAndTitleLoading,
    TResult Function(String? error)? requestsByStatusAndTitleError,
    TResult Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult Function()? requestsByStatusesLoading,
    TResult Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult Function(String? error)? requestsByStatusesError,
    TResult Function(String? message)? requestsByStatusesEmpty,
    TResult Function()? relateInformationLoading,
    TResult Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult Function(String? error)? relateInformationError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(requests, hasReachedMax);
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
    required TResult Function(_RequestsByStatusAndTitleLoaded value)
        requestsByStatusAndTitleLoaded,
    required TResult Function(_RequestsByStatusAndTitleLoading value)
        requestsByStatusAndTitleLoading,
    required TResult Function(_RequestsByStatusAndTitleError value)
        requestsByStatusAndTitleError,
    required TResult Function(_RequestsByStatusAndTitleEmpty value)
        requestsByStatusAndTitleEmpty,
    required TResult Function(_RequestsByStatusesLoading value)
        requestsByStatusesLoading,
    required TResult Function(_RequestsByStatusesLoaded value)
        requestsByStatusesLoaded,
    required TResult Function(_RequestsByStatusesError value)
        requestsByStatusesError,
    required TResult Function(_RequestsByStatusesEmpty value)
        requestsByStatusesEmpty,
    required TResult Function(_RelateInformationLoading value)
        relateInformationLoading,
    required TResult Function(_RelateInformationLoaded value)
        relateInformationLoaded,
    required TResult Function(_RelateInformationError value)
        relateInformationError,
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
    TResult? Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult? Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult? Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult? Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult? Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult? Function(_RequestsByStatusesLoaded value)?
        requestsByStatusesLoaded,
    TResult? Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult? Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult? Function(_RelateInformationLoading value)?
        relateInformationLoading,
    TResult? Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult? Function(_RelateInformationError value)? relateInformationError,
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
    TResult Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult Function(_RequestsByStatusesLoaded value)? requestsByStatusesLoaded,
    TResult Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult Function(_RelateInformationLoading value)? relateInformationLoading,
    TResult Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult Function(_RelateInformationError value)? relateInformationError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements RequestState {
  const factory _Loaded(
      {required final List<Request> requests,
      required final bool hasReachedMax}) = _$LoadedImpl;

  List<Request> get requests;
  bool get hasReachedMax;
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
  $Res call({String? error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ErrorImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'RequestState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

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
    required TResult Function(List<Request> requests, bool hasReachedMax)
        loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function(List<Request> requests)
        requestsByStatusAndTitleLoaded,
    required TResult Function() requestsByStatusAndTitleLoading,
    required TResult Function(String? error) requestsByStatusAndTitleError,
    required TResult Function(String? message) requestsByStatusAndTitleEmpty,
    required TResult Function() requestsByStatusesLoading,
    required TResult Function(List<Request> requests) requestsByStatusesLoaded,
    required TResult Function(String? error) requestsByStatusesError,
    required TResult Function(String? message) requestsByStatusesEmpty,
    required TResult Function() relateInformationLoading,
    required TResult Function(List<RelateInformation> relateInformation)
        relateInformationLoaded,
    required TResult Function(String? error) relateInformationError,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult? Function()? requestsByStatusAndTitleLoading,
    TResult? Function(String? error)? requestsByStatusAndTitleError,
    TResult? Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult? Function()? requestsByStatusesLoading,
    TResult? Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult? Function(String? error)? requestsByStatusesError,
    TResult? Function(String? message)? requestsByStatusesEmpty,
    TResult? Function()? relateInformationLoading,
    TResult? Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult? Function(String? error)? relateInformationError,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult Function()? requestsByStatusAndTitleLoading,
    TResult Function(String? error)? requestsByStatusAndTitleError,
    TResult Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult Function()? requestsByStatusesLoading,
    TResult Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult Function(String? error)? requestsByStatusesError,
    TResult Function(String? message)? requestsByStatusesEmpty,
    TResult Function()? relateInformationLoading,
    TResult Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult Function(String? error)? relateInformationError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
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
    required TResult Function(_RequestsByStatusAndTitleLoaded value)
        requestsByStatusAndTitleLoaded,
    required TResult Function(_RequestsByStatusAndTitleLoading value)
        requestsByStatusAndTitleLoading,
    required TResult Function(_RequestsByStatusAndTitleError value)
        requestsByStatusAndTitleError,
    required TResult Function(_RequestsByStatusAndTitleEmpty value)
        requestsByStatusAndTitleEmpty,
    required TResult Function(_RequestsByStatusesLoading value)
        requestsByStatusesLoading,
    required TResult Function(_RequestsByStatusesLoaded value)
        requestsByStatusesLoaded,
    required TResult Function(_RequestsByStatusesError value)
        requestsByStatusesError,
    required TResult Function(_RequestsByStatusesEmpty value)
        requestsByStatusesEmpty,
    required TResult Function(_RelateInformationLoading value)
        relateInformationLoading,
    required TResult Function(_RelateInformationLoaded value)
        relateInformationLoaded,
    required TResult Function(_RelateInformationError value)
        relateInformationError,
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
    TResult? Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult? Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult? Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult? Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult? Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult? Function(_RequestsByStatusesLoaded value)?
        requestsByStatusesLoaded,
    TResult? Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult? Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult? Function(_RelateInformationLoading value)?
        relateInformationLoading,
    TResult? Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult? Function(_RelateInformationError value)? relateInformationError,
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
    TResult Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult Function(_RequestsByStatusesLoaded value)? requestsByStatusesLoaded,
    TResult Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult Function(_RelateInformationLoading value)? relateInformationLoading,
    TResult Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult Function(_RelateInformationError value)? relateInformationError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements RequestState {
  const factory _Error(final String? error) = _$ErrorImpl;

  String? get error;
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
    extends _$RequestStateCopyWithImpl<$Res, _$EmptyImpl>
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
    return 'RequestState.empty(message: $message)';
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
    required TResult Function(List<Request> requests, bool hasReachedMax)
        loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function(List<Request> requests)
        requestsByStatusAndTitleLoaded,
    required TResult Function() requestsByStatusAndTitleLoading,
    required TResult Function(String? error) requestsByStatusAndTitleError,
    required TResult Function(String? message) requestsByStatusAndTitleEmpty,
    required TResult Function() requestsByStatusesLoading,
    required TResult Function(List<Request> requests) requestsByStatusesLoaded,
    required TResult Function(String? error) requestsByStatusesError,
    required TResult Function(String? message) requestsByStatusesEmpty,
    required TResult Function() relateInformationLoading,
    required TResult Function(List<RelateInformation> relateInformation)
        relateInformationLoaded,
    required TResult Function(String? error) relateInformationError,
  }) {
    return empty(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult? Function()? requestsByStatusAndTitleLoading,
    TResult? Function(String? error)? requestsByStatusAndTitleError,
    TResult? Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult? Function()? requestsByStatusesLoading,
    TResult? Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult? Function(String? error)? requestsByStatusesError,
    TResult? Function(String? message)? requestsByStatusesEmpty,
    TResult? Function()? relateInformationLoading,
    TResult? Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult? Function(String? error)? relateInformationError,
  }) {
    return empty?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult Function()? requestsByStatusAndTitleLoading,
    TResult Function(String? error)? requestsByStatusAndTitleError,
    TResult Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult Function()? requestsByStatusesLoading,
    TResult Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult Function(String? error)? requestsByStatusesError,
    TResult Function(String? message)? requestsByStatusesEmpty,
    TResult Function()? relateInformationLoading,
    TResult Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult Function(String? error)? relateInformationError,
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
    required TResult Function(_RequestsByStatusAndTitleLoaded value)
        requestsByStatusAndTitleLoaded,
    required TResult Function(_RequestsByStatusAndTitleLoading value)
        requestsByStatusAndTitleLoading,
    required TResult Function(_RequestsByStatusAndTitleError value)
        requestsByStatusAndTitleError,
    required TResult Function(_RequestsByStatusAndTitleEmpty value)
        requestsByStatusAndTitleEmpty,
    required TResult Function(_RequestsByStatusesLoading value)
        requestsByStatusesLoading,
    required TResult Function(_RequestsByStatusesLoaded value)
        requestsByStatusesLoaded,
    required TResult Function(_RequestsByStatusesError value)
        requestsByStatusesError,
    required TResult Function(_RequestsByStatusesEmpty value)
        requestsByStatusesEmpty,
    required TResult Function(_RelateInformationLoading value)
        relateInformationLoading,
    required TResult Function(_RelateInformationLoaded value)
        relateInformationLoaded,
    required TResult Function(_RelateInformationError value)
        relateInformationError,
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
    TResult? Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult? Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult? Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult? Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult? Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult? Function(_RequestsByStatusesLoaded value)?
        requestsByStatusesLoaded,
    TResult? Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult? Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult? Function(_RelateInformationLoading value)?
        relateInformationLoading,
    TResult? Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult? Function(_RelateInformationError value)? relateInformationError,
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
    TResult Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult Function(_RequestsByStatusesLoaded value)? requestsByStatusesLoaded,
    TResult Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult Function(_RelateInformationLoading value)? relateInformationLoading,
    TResult Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult Function(_RelateInformationError value)? relateInformationError,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements RequestState {
  const factory _Empty(final String? message) = _$EmptyImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestsByStatusAndTitleLoadedImplCopyWith<$Res> {
  factory _$$RequestsByStatusAndTitleLoadedImplCopyWith(
          _$RequestsByStatusAndTitleLoadedImpl value,
          $Res Function(_$RequestsByStatusAndTitleLoadedImpl) then) =
      __$$RequestsByStatusAndTitleLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Request> requests});
}

/// @nodoc
class __$$RequestsByStatusAndTitleLoadedImplCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res,
        _$RequestsByStatusAndTitleLoadedImpl>
    implements _$$RequestsByStatusAndTitleLoadedImplCopyWith<$Res> {
  __$$RequestsByStatusAndTitleLoadedImplCopyWithImpl(
      _$RequestsByStatusAndTitleLoadedImpl _value,
      $Res Function(_$RequestsByStatusAndTitleLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requests = null,
  }) {
    return _then(_$RequestsByStatusAndTitleLoadedImpl(
      requests: null == requests
          ? _value._requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<Request>,
    ));
  }
}

/// @nodoc

class _$RequestsByStatusAndTitleLoadedImpl
    implements _RequestsByStatusAndTitleLoaded {
  const _$RequestsByStatusAndTitleLoadedImpl(
      {required final List<Request> requests})
      : _requests = requests;

  final List<Request> _requests;
  @override
  List<Request> get requests {
    if (_requests is EqualUnmodifiableListView) return _requests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requests);
  }

  @override
  String toString() {
    return 'RequestState.requestsByStatusAndTitleLoaded(requests: $requests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestsByStatusAndTitleLoadedImpl &&
            const DeepCollectionEquality().equals(other._requests, _requests));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_requests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestsByStatusAndTitleLoadedImplCopyWith<
          _$RequestsByStatusAndTitleLoadedImpl>
      get copyWith => __$$RequestsByStatusAndTitleLoadedImplCopyWithImpl<
          _$RequestsByStatusAndTitleLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Request> requests, bool hasReachedMax)
        loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function(List<Request> requests)
        requestsByStatusAndTitleLoaded,
    required TResult Function() requestsByStatusAndTitleLoading,
    required TResult Function(String? error) requestsByStatusAndTitleError,
    required TResult Function(String? message) requestsByStatusAndTitleEmpty,
    required TResult Function() requestsByStatusesLoading,
    required TResult Function(List<Request> requests) requestsByStatusesLoaded,
    required TResult Function(String? error) requestsByStatusesError,
    required TResult Function(String? message) requestsByStatusesEmpty,
    required TResult Function() relateInformationLoading,
    required TResult Function(List<RelateInformation> relateInformation)
        relateInformationLoaded,
    required TResult Function(String? error) relateInformationError,
  }) {
    return requestsByStatusAndTitleLoaded(requests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult? Function()? requestsByStatusAndTitleLoading,
    TResult? Function(String? error)? requestsByStatusAndTitleError,
    TResult? Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult? Function()? requestsByStatusesLoading,
    TResult? Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult? Function(String? error)? requestsByStatusesError,
    TResult? Function(String? message)? requestsByStatusesEmpty,
    TResult? Function()? relateInformationLoading,
    TResult? Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult? Function(String? error)? relateInformationError,
  }) {
    return requestsByStatusAndTitleLoaded?.call(requests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult Function()? requestsByStatusAndTitleLoading,
    TResult Function(String? error)? requestsByStatusAndTitleError,
    TResult Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult Function()? requestsByStatusesLoading,
    TResult Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult Function(String? error)? requestsByStatusesError,
    TResult Function(String? message)? requestsByStatusesEmpty,
    TResult Function()? relateInformationLoading,
    TResult Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult Function(String? error)? relateInformationError,
    required TResult orElse(),
  }) {
    if (requestsByStatusAndTitleLoaded != null) {
      return requestsByStatusAndTitleLoaded(requests);
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
    required TResult Function(_RequestsByStatusAndTitleLoaded value)
        requestsByStatusAndTitleLoaded,
    required TResult Function(_RequestsByStatusAndTitleLoading value)
        requestsByStatusAndTitleLoading,
    required TResult Function(_RequestsByStatusAndTitleError value)
        requestsByStatusAndTitleError,
    required TResult Function(_RequestsByStatusAndTitleEmpty value)
        requestsByStatusAndTitleEmpty,
    required TResult Function(_RequestsByStatusesLoading value)
        requestsByStatusesLoading,
    required TResult Function(_RequestsByStatusesLoaded value)
        requestsByStatusesLoaded,
    required TResult Function(_RequestsByStatusesError value)
        requestsByStatusesError,
    required TResult Function(_RequestsByStatusesEmpty value)
        requestsByStatusesEmpty,
    required TResult Function(_RelateInformationLoading value)
        relateInformationLoading,
    required TResult Function(_RelateInformationLoaded value)
        relateInformationLoaded,
    required TResult Function(_RelateInformationError value)
        relateInformationError,
  }) {
    return requestsByStatusAndTitleLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult? Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult? Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult? Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult? Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult? Function(_RequestsByStatusesLoaded value)?
        requestsByStatusesLoaded,
    TResult? Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult? Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult? Function(_RelateInformationLoading value)?
        relateInformationLoading,
    TResult? Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult? Function(_RelateInformationError value)? relateInformationError,
  }) {
    return requestsByStatusAndTitleLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult Function(_RequestsByStatusesLoaded value)? requestsByStatusesLoaded,
    TResult Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult Function(_RelateInformationLoading value)? relateInformationLoading,
    TResult Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult Function(_RelateInformationError value)? relateInformationError,
    required TResult orElse(),
  }) {
    if (requestsByStatusAndTitleLoaded != null) {
      return requestsByStatusAndTitleLoaded(this);
    }
    return orElse();
  }
}

abstract class _RequestsByStatusAndTitleLoaded implements RequestState {
  const factory _RequestsByStatusAndTitleLoaded(
          {required final List<Request> requests}) =
      _$RequestsByStatusAndTitleLoadedImpl;

  List<Request> get requests;
  @JsonKey(ignore: true)
  _$$RequestsByStatusAndTitleLoadedImplCopyWith<
          _$RequestsByStatusAndTitleLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestsByStatusAndTitleLoadingImplCopyWith<$Res> {
  factory _$$RequestsByStatusAndTitleLoadingImplCopyWith(
          _$RequestsByStatusAndTitleLoadingImpl value,
          $Res Function(_$RequestsByStatusAndTitleLoadingImpl) then) =
      __$$RequestsByStatusAndTitleLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestsByStatusAndTitleLoadingImplCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res,
        _$RequestsByStatusAndTitleLoadingImpl>
    implements _$$RequestsByStatusAndTitleLoadingImplCopyWith<$Res> {
  __$$RequestsByStatusAndTitleLoadingImplCopyWithImpl(
      _$RequestsByStatusAndTitleLoadingImpl _value,
      $Res Function(_$RequestsByStatusAndTitleLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestsByStatusAndTitleLoadingImpl
    implements _RequestsByStatusAndTitleLoading {
  const _$RequestsByStatusAndTitleLoadingImpl();

  @override
  String toString() {
    return 'RequestState.requestsByStatusAndTitleLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestsByStatusAndTitleLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Request> requests, bool hasReachedMax)
        loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function(List<Request> requests)
        requestsByStatusAndTitleLoaded,
    required TResult Function() requestsByStatusAndTitleLoading,
    required TResult Function(String? error) requestsByStatusAndTitleError,
    required TResult Function(String? message) requestsByStatusAndTitleEmpty,
    required TResult Function() requestsByStatusesLoading,
    required TResult Function(List<Request> requests) requestsByStatusesLoaded,
    required TResult Function(String? error) requestsByStatusesError,
    required TResult Function(String? message) requestsByStatusesEmpty,
    required TResult Function() relateInformationLoading,
    required TResult Function(List<RelateInformation> relateInformation)
        relateInformationLoaded,
    required TResult Function(String? error) relateInformationError,
  }) {
    return requestsByStatusAndTitleLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult? Function()? requestsByStatusAndTitleLoading,
    TResult? Function(String? error)? requestsByStatusAndTitleError,
    TResult? Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult? Function()? requestsByStatusesLoading,
    TResult? Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult? Function(String? error)? requestsByStatusesError,
    TResult? Function(String? message)? requestsByStatusesEmpty,
    TResult? Function()? relateInformationLoading,
    TResult? Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult? Function(String? error)? relateInformationError,
  }) {
    return requestsByStatusAndTitleLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult Function()? requestsByStatusAndTitleLoading,
    TResult Function(String? error)? requestsByStatusAndTitleError,
    TResult Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult Function()? requestsByStatusesLoading,
    TResult Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult Function(String? error)? requestsByStatusesError,
    TResult Function(String? message)? requestsByStatusesEmpty,
    TResult Function()? relateInformationLoading,
    TResult Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult Function(String? error)? relateInformationError,
    required TResult orElse(),
  }) {
    if (requestsByStatusAndTitleLoading != null) {
      return requestsByStatusAndTitleLoading();
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
    required TResult Function(_RequestsByStatusAndTitleLoaded value)
        requestsByStatusAndTitleLoaded,
    required TResult Function(_RequestsByStatusAndTitleLoading value)
        requestsByStatusAndTitleLoading,
    required TResult Function(_RequestsByStatusAndTitleError value)
        requestsByStatusAndTitleError,
    required TResult Function(_RequestsByStatusAndTitleEmpty value)
        requestsByStatusAndTitleEmpty,
    required TResult Function(_RequestsByStatusesLoading value)
        requestsByStatusesLoading,
    required TResult Function(_RequestsByStatusesLoaded value)
        requestsByStatusesLoaded,
    required TResult Function(_RequestsByStatusesError value)
        requestsByStatusesError,
    required TResult Function(_RequestsByStatusesEmpty value)
        requestsByStatusesEmpty,
    required TResult Function(_RelateInformationLoading value)
        relateInformationLoading,
    required TResult Function(_RelateInformationLoaded value)
        relateInformationLoaded,
    required TResult Function(_RelateInformationError value)
        relateInformationError,
  }) {
    return requestsByStatusAndTitleLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult? Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult? Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult? Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult? Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult? Function(_RequestsByStatusesLoaded value)?
        requestsByStatusesLoaded,
    TResult? Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult? Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult? Function(_RelateInformationLoading value)?
        relateInformationLoading,
    TResult? Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult? Function(_RelateInformationError value)? relateInformationError,
  }) {
    return requestsByStatusAndTitleLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult Function(_RequestsByStatusesLoaded value)? requestsByStatusesLoaded,
    TResult Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult Function(_RelateInformationLoading value)? relateInformationLoading,
    TResult Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult Function(_RelateInformationError value)? relateInformationError,
    required TResult orElse(),
  }) {
    if (requestsByStatusAndTitleLoading != null) {
      return requestsByStatusAndTitleLoading(this);
    }
    return orElse();
  }
}

abstract class _RequestsByStatusAndTitleLoading implements RequestState {
  const factory _RequestsByStatusAndTitleLoading() =
      _$RequestsByStatusAndTitleLoadingImpl;
}

/// @nodoc
abstract class _$$RequestsByStatusAndTitleErrorImplCopyWith<$Res> {
  factory _$$RequestsByStatusAndTitleErrorImplCopyWith(
          _$RequestsByStatusAndTitleErrorImpl value,
          $Res Function(_$RequestsByStatusAndTitleErrorImpl) then) =
      __$$RequestsByStatusAndTitleErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$RequestsByStatusAndTitleErrorImplCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res,
        _$RequestsByStatusAndTitleErrorImpl>
    implements _$$RequestsByStatusAndTitleErrorImplCopyWith<$Res> {
  __$$RequestsByStatusAndTitleErrorImplCopyWithImpl(
      _$RequestsByStatusAndTitleErrorImpl _value,
      $Res Function(_$RequestsByStatusAndTitleErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$RequestsByStatusAndTitleErrorImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RequestsByStatusAndTitleErrorImpl
    implements _RequestsByStatusAndTitleError {
  const _$RequestsByStatusAndTitleErrorImpl(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'RequestState.requestsByStatusAndTitleError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestsByStatusAndTitleErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestsByStatusAndTitleErrorImplCopyWith<
          _$RequestsByStatusAndTitleErrorImpl>
      get copyWith => __$$RequestsByStatusAndTitleErrorImplCopyWithImpl<
          _$RequestsByStatusAndTitleErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Request> requests, bool hasReachedMax)
        loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function(List<Request> requests)
        requestsByStatusAndTitleLoaded,
    required TResult Function() requestsByStatusAndTitleLoading,
    required TResult Function(String? error) requestsByStatusAndTitleError,
    required TResult Function(String? message) requestsByStatusAndTitleEmpty,
    required TResult Function() requestsByStatusesLoading,
    required TResult Function(List<Request> requests) requestsByStatusesLoaded,
    required TResult Function(String? error) requestsByStatusesError,
    required TResult Function(String? message) requestsByStatusesEmpty,
    required TResult Function() relateInformationLoading,
    required TResult Function(List<RelateInformation> relateInformation)
        relateInformationLoaded,
    required TResult Function(String? error) relateInformationError,
  }) {
    return requestsByStatusAndTitleError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult? Function()? requestsByStatusAndTitleLoading,
    TResult? Function(String? error)? requestsByStatusAndTitleError,
    TResult? Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult? Function()? requestsByStatusesLoading,
    TResult? Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult? Function(String? error)? requestsByStatusesError,
    TResult? Function(String? message)? requestsByStatusesEmpty,
    TResult? Function()? relateInformationLoading,
    TResult? Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult? Function(String? error)? relateInformationError,
  }) {
    return requestsByStatusAndTitleError?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult Function()? requestsByStatusAndTitleLoading,
    TResult Function(String? error)? requestsByStatusAndTitleError,
    TResult Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult Function()? requestsByStatusesLoading,
    TResult Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult Function(String? error)? requestsByStatusesError,
    TResult Function(String? message)? requestsByStatusesEmpty,
    TResult Function()? relateInformationLoading,
    TResult Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult Function(String? error)? relateInformationError,
    required TResult orElse(),
  }) {
    if (requestsByStatusAndTitleError != null) {
      return requestsByStatusAndTitleError(this.error);
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
    required TResult Function(_RequestsByStatusAndTitleLoaded value)
        requestsByStatusAndTitleLoaded,
    required TResult Function(_RequestsByStatusAndTitleLoading value)
        requestsByStatusAndTitleLoading,
    required TResult Function(_RequestsByStatusAndTitleError value)
        requestsByStatusAndTitleError,
    required TResult Function(_RequestsByStatusAndTitleEmpty value)
        requestsByStatusAndTitleEmpty,
    required TResult Function(_RequestsByStatusesLoading value)
        requestsByStatusesLoading,
    required TResult Function(_RequestsByStatusesLoaded value)
        requestsByStatusesLoaded,
    required TResult Function(_RequestsByStatusesError value)
        requestsByStatusesError,
    required TResult Function(_RequestsByStatusesEmpty value)
        requestsByStatusesEmpty,
    required TResult Function(_RelateInformationLoading value)
        relateInformationLoading,
    required TResult Function(_RelateInformationLoaded value)
        relateInformationLoaded,
    required TResult Function(_RelateInformationError value)
        relateInformationError,
  }) {
    return requestsByStatusAndTitleError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult? Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult? Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult? Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult? Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult? Function(_RequestsByStatusesLoaded value)?
        requestsByStatusesLoaded,
    TResult? Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult? Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult? Function(_RelateInformationLoading value)?
        relateInformationLoading,
    TResult? Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult? Function(_RelateInformationError value)? relateInformationError,
  }) {
    return requestsByStatusAndTitleError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult Function(_RequestsByStatusesLoaded value)? requestsByStatusesLoaded,
    TResult Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult Function(_RelateInformationLoading value)? relateInformationLoading,
    TResult Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult Function(_RelateInformationError value)? relateInformationError,
    required TResult orElse(),
  }) {
    if (requestsByStatusAndTitleError != null) {
      return requestsByStatusAndTitleError(this);
    }
    return orElse();
  }
}

abstract class _RequestsByStatusAndTitleError implements RequestState {
  const factory _RequestsByStatusAndTitleError(final String? error) =
      _$RequestsByStatusAndTitleErrorImpl;

  String? get error;
  @JsonKey(ignore: true)
  _$$RequestsByStatusAndTitleErrorImplCopyWith<
          _$RequestsByStatusAndTitleErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestsByStatusAndTitleEmptyImplCopyWith<$Res> {
  factory _$$RequestsByStatusAndTitleEmptyImplCopyWith(
          _$RequestsByStatusAndTitleEmptyImpl value,
          $Res Function(_$RequestsByStatusAndTitleEmptyImpl) then) =
      __$$RequestsByStatusAndTitleEmptyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$RequestsByStatusAndTitleEmptyImplCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res,
        _$RequestsByStatusAndTitleEmptyImpl>
    implements _$$RequestsByStatusAndTitleEmptyImplCopyWith<$Res> {
  __$$RequestsByStatusAndTitleEmptyImplCopyWithImpl(
      _$RequestsByStatusAndTitleEmptyImpl _value,
      $Res Function(_$RequestsByStatusAndTitleEmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$RequestsByStatusAndTitleEmptyImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RequestsByStatusAndTitleEmptyImpl
    implements _RequestsByStatusAndTitleEmpty {
  const _$RequestsByStatusAndTitleEmptyImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'RequestState.requestsByStatusAndTitleEmpty(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestsByStatusAndTitleEmptyImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestsByStatusAndTitleEmptyImplCopyWith<
          _$RequestsByStatusAndTitleEmptyImpl>
      get copyWith => __$$RequestsByStatusAndTitleEmptyImplCopyWithImpl<
          _$RequestsByStatusAndTitleEmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Request> requests, bool hasReachedMax)
        loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function(List<Request> requests)
        requestsByStatusAndTitleLoaded,
    required TResult Function() requestsByStatusAndTitleLoading,
    required TResult Function(String? error) requestsByStatusAndTitleError,
    required TResult Function(String? message) requestsByStatusAndTitleEmpty,
    required TResult Function() requestsByStatusesLoading,
    required TResult Function(List<Request> requests) requestsByStatusesLoaded,
    required TResult Function(String? error) requestsByStatusesError,
    required TResult Function(String? message) requestsByStatusesEmpty,
    required TResult Function() relateInformationLoading,
    required TResult Function(List<RelateInformation> relateInformation)
        relateInformationLoaded,
    required TResult Function(String? error) relateInformationError,
  }) {
    return requestsByStatusAndTitleEmpty(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult? Function()? requestsByStatusAndTitleLoading,
    TResult? Function(String? error)? requestsByStatusAndTitleError,
    TResult? Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult? Function()? requestsByStatusesLoading,
    TResult? Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult? Function(String? error)? requestsByStatusesError,
    TResult? Function(String? message)? requestsByStatusesEmpty,
    TResult? Function()? relateInformationLoading,
    TResult? Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult? Function(String? error)? relateInformationError,
  }) {
    return requestsByStatusAndTitleEmpty?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult Function()? requestsByStatusAndTitleLoading,
    TResult Function(String? error)? requestsByStatusAndTitleError,
    TResult Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult Function()? requestsByStatusesLoading,
    TResult Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult Function(String? error)? requestsByStatusesError,
    TResult Function(String? message)? requestsByStatusesEmpty,
    TResult Function()? relateInformationLoading,
    TResult Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult Function(String? error)? relateInformationError,
    required TResult orElse(),
  }) {
    if (requestsByStatusAndTitleEmpty != null) {
      return requestsByStatusAndTitleEmpty(message);
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
    required TResult Function(_RequestsByStatusAndTitleLoaded value)
        requestsByStatusAndTitleLoaded,
    required TResult Function(_RequestsByStatusAndTitleLoading value)
        requestsByStatusAndTitleLoading,
    required TResult Function(_RequestsByStatusAndTitleError value)
        requestsByStatusAndTitleError,
    required TResult Function(_RequestsByStatusAndTitleEmpty value)
        requestsByStatusAndTitleEmpty,
    required TResult Function(_RequestsByStatusesLoading value)
        requestsByStatusesLoading,
    required TResult Function(_RequestsByStatusesLoaded value)
        requestsByStatusesLoaded,
    required TResult Function(_RequestsByStatusesError value)
        requestsByStatusesError,
    required TResult Function(_RequestsByStatusesEmpty value)
        requestsByStatusesEmpty,
    required TResult Function(_RelateInformationLoading value)
        relateInformationLoading,
    required TResult Function(_RelateInformationLoaded value)
        relateInformationLoaded,
    required TResult Function(_RelateInformationError value)
        relateInformationError,
  }) {
    return requestsByStatusAndTitleEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult? Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult? Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult? Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult? Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult? Function(_RequestsByStatusesLoaded value)?
        requestsByStatusesLoaded,
    TResult? Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult? Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult? Function(_RelateInformationLoading value)?
        relateInformationLoading,
    TResult? Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult? Function(_RelateInformationError value)? relateInformationError,
  }) {
    return requestsByStatusAndTitleEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult Function(_RequestsByStatusesLoaded value)? requestsByStatusesLoaded,
    TResult Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult Function(_RelateInformationLoading value)? relateInformationLoading,
    TResult Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult Function(_RelateInformationError value)? relateInformationError,
    required TResult orElse(),
  }) {
    if (requestsByStatusAndTitleEmpty != null) {
      return requestsByStatusAndTitleEmpty(this);
    }
    return orElse();
  }
}

abstract class _RequestsByStatusAndTitleEmpty implements RequestState {
  const factory _RequestsByStatusAndTitleEmpty(final String? message) =
      _$RequestsByStatusAndTitleEmptyImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$RequestsByStatusAndTitleEmptyImplCopyWith<
          _$RequestsByStatusAndTitleEmptyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestsByStatusesLoadingImplCopyWith<$Res> {
  factory _$$RequestsByStatusesLoadingImplCopyWith(
          _$RequestsByStatusesLoadingImpl value,
          $Res Function(_$RequestsByStatusesLoadingImpl) then) =
      __$$RequestsByStatusesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestsByStatusesLoadingImplCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$RequestsByStatusesLoadingImpl>
    implements _$$RequestsByStatusesLoadingImplCopyWith<$Res> {
  __$$RequestsByStatusesLoadingImplCopyWithImpl(
      _$RequestsByStatusesLoadingImpl _value,
      $Res Function(_$RequestsByStatusesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestsByStatusesLoadingImpl implements _RequestsByStatusesLoading {
  const _$RequestsByStatusesLoadingImpl();

  @override
  String toString() {
    return 'RequestState.requestsByStatusesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestsByStatusesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Request> requests, bool hasReachedMax)
        loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function(List<Request> requests)
        requestsByStatusAndTitleLoaded,
    required TResult Function() requestsByStatusAndTitleLoading,
    required TResult Function(String? error) requestsByStatusAndTitleError,
    required TResult Function(String? message) requestsByStatusAndTitleEmpty,
    required TResult Function() requestsByStatusesLoading,
    required TResult Function(List<Request> requests) requestsByStatusesLoaded,
    required TResult Function(String? error) requestsByStatusesError,
    required TResult Function(String? message) requestsByStatusesEmpty,
    required TResult Function() relateInformationLoading,
    required TResult Function(List<RelateInformation> relateInformation)
        relateInformationLoaded,
    required TResult Function(String? error) relateInformationError,
  }) {
    return requestsByStatusesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult? Function()? requestsByStatusAndTitleLoading,
    TResult? Function(String? error)? requestsByStatusAndTitleError,
    TResult? Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult? Function()? requestsByStatusesLoading,
    TResult? Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult? Function(String? error)? requestsByStatusesError,
    TResult? Function(String? message)? requestsByStatusesEmpty,
    TResult? Function()? relateInformationLoading,
    TResult? Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult? Function(String? error)? relateInformationError,
  }) {
    return requestsByStatusesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult Function()? requestsByStatusAndTitleLoading,
    TResult Function(String? error)? requestsByStatusAndTitleError,
    TResult Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult Function()? requestsByStatusesLoading,
    TResult Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult Function(String? error)? requestsByStatusesError,
    TResult Function(String? message)? requestsByStatusesEmpty,
    TResult Function()? relateInformationLoading,
    TResult Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult Function(String? error)? relateInformationError,
    required TResult orElse(),
  }) {
    if (requestsByStatusesLoading != null) {
      return requestsByStatusesLoading();
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
    required TResult Function(_RequestsByStatusAndTitleLoaded value)
        requestsByStatusAndTitleLoaded,
    required TResult Function(_RequestsByStatusAndTitleLoading value)
        requestsByStatusAndTitleLoading,
    required TResult Function(_RequestsByStatusAndTitleError value)
        requestsByStatusAndTitleError,
    required TResult Function(_RequestsByStatusAndTitleEmpty value)
        requestsByStatusAndTitleEmpty,
    required TResult Function(_RequestsByStatusesLoading value)
        requestsByStatusesLoading,
    required TResult Function(_RequestsByStatusesLoaded value)
        requestsByStatusesLoaded,
    required TResult Function(_RequestsByStatusesError value)
        requestsByStatusesError,
    required TResult Function(_RequestsByStatusesEmpty value)
        requestsByStatusesEmpty,
    required TResult Function(_RelateInformationLoading value)
        relateInformationLoading,
    required TResult Function(_RelateInformationLoaded value)
        relateInformationLoaded,
    required TResult Function(_RelateInformationError value)
        relateInformationError,
  }) {
    return requestsByStatusesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult? Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult? Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult? Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult? Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult? Function(_RequestsByStatusesLoaded value)?
        requestsByStatusesLoaded,
    TResult? Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult? Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult? Function(_RelateInformationLoading value)?
        relateInformationLoading,
    TResult? Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult? Function(_RelateInformationError value)? relateInformationError,
  }) {
    return requestsByStatusesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult Function(_RequestsByStatusesLoaded value)? requestsByStatusesLoaded,
    TResult Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult Function(_RelateInformationLoading value)? relateInformationLoading,
    TResult Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult Function(_RelateInformationError value)? relateInformationError,
    required TResult orElse(),
  }) {
    if (requestsByStatusesLoading != null) {
      return requestsByStatusesLoading(this);
    }
    return orElse();
  }
}

abstract class _RequestsByStatusesLoading implements RequestState {
  const factory _RequestsByStatusesLoading() = _$RequestsByStatusesLoadingImpl;
}

/// @nodoc
abstract class _$$RequestsByStatusesLoadedImplCopyWith<$Res> {
  factory _$$RequestsByStatusesLoadedImplCopyWith(
          _$RequestsByStatusesLoadedImpl value,
          $Res Function(_$RequestsByStatusesLoadedImpl) then) =
      __$$RequestsByStatusesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Request> requests});
}

/// @nodoc
class __$$RequestsByStatusesLoadedImplCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$RequestsByStatusesLoadedImpl>
    implements _$$RequestsByStatusesLoadedImplCopyWith<$Res> {
  __$$RequestsByStatusesLoadedImplCopyWithImpl(
      _$RequestsByStatusesLoadedImpl _value,
      $Res Function(_$RequestsByStatusesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requests = null,
  }) {
    return _then(_$RequestsByStatusesLoadedImpl(
      requests: null == requests
          ? _value._requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<Request>,
    ));
  }
}

/// @nodoc

class _$RequestsByStatusesLoadedImpl implements _RequestsByStatusesLoaded {
  const _$RequestsByStatusesLoadedImpl({required final List<Request> requests})
      : _requests = requests;

  final List<Request> _requests;
  @override
  List<Request> get requests {
    if (_requests is EqualUnmodifiableListView) return _requests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requests);
  }

  @override
  String toString() {
    return 'RequestState.requestsByStatusesLoaded(requests: $requests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestsByStatusesLoadedImpl &&
            const DeepCollectionEquality().equals(other._requests, _requests));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_requests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestsByStatusesLoadedImplCopyWith<_$RequestsByStatusesLoadedImpl>
      get copyWith => __$$RequestsByStatusesLoadedImplCopyWithImpl<
          _$RequestsByStatusesLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Request> requests, bool hasReachedMax)
        loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function(List<Request> requests)
        requestsByStatusAndTitleLoaded,
    required TResult Function() requestsByStatusAndTitleLoading,
    required TResult Function(String? error) requestsByStatusAndTitleError,
    required TResult Function(String? message) requestsByStatusAndTitleEmpty,
    required TResult Function() requestsByStatusesLoading,
    required TResult Function(List<Request> requests) requestsByStatusesLoaded,
    required TResult Function(String? error) requestsByStatusesError,
    required TResult Function(String? message) requestsByStatusesEmpty,
    required TResult Function() relateInformationLoading,
    required TResult Function(List<RelateInformation> relateInformation)
        relateInformationLoaded,
    required TResult Function(String? error) relateInformationError,
  }) {
    return requestsByStatusesLoaded(requests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult? Function()? requestsByStatusAndTitleLoading,
    TResult? Function(String? error)? requestsByStatusAndTitleError,
    TResult? Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult? Function()? requestsByStatusesLoading,
    TResult? Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult? Function(String? error)? requestsByStatusesError,
    TResult? Function(String? message)? requestsByStatusesEmpty,
    TResult? Function()? relateInformationLoading,
    TResult? Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult? Function(String? error)? relateInformationError,
  }) {
    return requestsByStatusesLoaded?.call(requests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult Function()? requestsByStatusAndTitleLoading,
    TResult Function(String? error)? requestsByStatusAndTitleError,
    TResult Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult Function()? requestsByStatusesLoading,
    TResult Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult Function(String? error)? requestsByStatusesError,
    TResult Function(String? message)? requestsByStatusesEmpty,
    TResult Function()? relateInformationLoading,
    TResult Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult Function(String? error)? relateInformationError,
    required TResult orElse(),
  }) {
    if (requestsByStatusesLoaded != null) {
      return requestsByStatusesLoaded(requests);
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
    required TResult Function(_RequestsByStatusAndTitleLoaded value)
        requestsByStatusAndTitleLoaded,
    required TResult Function(_RequestsByStatusAndTitleLoading value)
        requestsByStatusAndTitleLoading,
    required TResult Function(_RequestsByStatusAndTitleError value)
        requestsByStatusAndTitleError,
    required TResult Function(_RequestsByStatusAndTitleEmpty value)
        requestsByStatusAndTitleEmpty,
    required TResult Function(_RequestsByStatusesLoading value)
        requestsByStatusesLoading,
    required TResult Function(_RequestsByStatusesLoaded value)
        requestsByStatusesLoaded,
    required TResult Function(_RequestsByStatusesError value)
        requestsByStatusesError,
    required TResult Function(_RequestsByStatusesEmpty value)
        requestsByStatusesEmpty,
    required TResult Function(_RelateInformationLoading value)
        relateInformationLoading,
    required TResult Function(_RelateInformationLoaded value)
        relateInformationLoaded,
    required TResult Function(_RelateInformationError value)
        relateInformationError,
  }) {
    return requestsByStatusesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult? Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult? Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult? Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult? Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult? Function(_RequestsByStatusesLoaded value)?
        requestsByStatusesLoaded,
    TResult? Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult? Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult? Function(_RelateInformationLoading value)?
        relateInformationLoading,
    TResult? Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult? Function(_RelateInformationError value)? relateInformationError,
  }) {
    return requestsByStatusesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult Function(_RequestsByStatusesLoaded value)? requestsByStatusesLoaded,
    TResult Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult Function(_RelateInformationLoading value)? relateInformationLoading,
    TResult Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult Function(_RelateInformationError value)? relateInformationError,
    required TResult orElse(),
  }) {
    if (requestsByStatusesLoaded != null) {
      return requestsByStatusesLoaded(this);
    }
    return orElse();
  }
}

abstract class _RequestsByStatusesLoaded implements RequestState {
  const factory _RequestsByStatusesLoaded(
      {required final List<Request> requests}) = _$RequestsByStatusesLoadedImpl;

  List<Request> get requests;
  @JsonKey(ignore: true)
  _$$RequestsByStatusesLoadedImplCopyWith<_$RequestsByStatusesLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestsByStatusesErrorImplCopyWith<$Res> {
  factory _$$RequestsByStatusesErrorImplCopyWith(
          _$RequestsByStatusesErrorImpl value,
          $Res Function(_$RequestsByStatusesErrorImpl) then) =
      __$$RequestsByStatusesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$RequestsByStatusesErrorImplCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$RequestsByStatusesErrorImpl>
    implements _$$RequestsByStatusesErrorImplCopyWith<$Res> {
  __$$RequestsByStatusesErrorImplCopyWithImpl(
      _$RequestsByStatusesErrorImpl _value,
      $Res Function(_$RequestsByStatusesErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$RequestsByStatusesErrorImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RequestsByStatusesErrorImpl implements _RequestsByStatusesError {
  const _$RequestsByStatusesErrorImpl(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'RequestState.requestsByStatusesError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestsByStatusesErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestsByStatusesErrorImplCopyWith<_$RequestsByStatusesErrorImpl>
      get copyWith => __$$RequestsByStatusesErrorImplCopyWithImpl<
          _$RequestsByStatusesErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Request> requests, bool hasReachedMax)
        loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function(List<Request> requests)
        requestsByStatusAndTitleLoaded,
    required TResult Function() requestsByStatusAndTitleLoading,
    required TResult Function(String? error) requestsByStatusAndTitleError,
    required TResult Function(String? message) requestsByStatusAndTitleEmpty,
    required TResult Function() requestsByStatusesLoading,
    required TResult Function(List<Request> requests) requestsByStatusesLoaded,
    required TResult Function(String? error) requestsByStatusesError,
    required TResult Function(String? message) requestsByStatusesEmpty,
    required TResult Function() relateInformationLoading,
    required TResult Function(List<RelateInformation> relateInformation)
        relateInformationLoaded,
    required TResult Function(String? error) relateInformationError,
  }) {
    return requestsByStatusesError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult? Function()? requestsByStatusAndTitleLoading,
    TResult? Function(String? error)? requestsByStatusAndTitleError,
    TResult? Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult? Function()? requestsByStatusesLoading,
    TResult? Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult? Function(String? error)? requestsByStatusesError,
    TResult? Function(String? message)? requestsByStatusesEmpty,
    TResult? Function()? relateInformationLoading,
    TResult? Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult? Function(String? error)? relateInformationError,
  }) {
    return requestsByStatusesError?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult Function()? requestsByStatusAndTitleLoading,
    TResult Function(String? error)? requestsByStatusAndTitleError,
    TResult Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult Function()? requestsByStatusesLoading,
    TResult Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult Function(String? error)? requestsByStatusesError,
    TResult Function(String? message)? requestsByStatusesEmpty,
    TResult Function()? relateInformationLoading,
    TResult Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult Function(String? error)? relateInformationError,
    required TResult orElse(),
  }) {
    if (requestsByStatusesError != null) {
      return requestsByStatusesError(this.error);
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
    required TResult Function(_RequestsByStatusAndTitleLoaded value)
        requestsByStatusAndTitleLoaded,
    required TResult Function(_RequestsByStatusAndTitleLoading value)
        requestsByStatusAndTitleLoading,
    required TResult Function(_RequestsByStatusAndTitleError value)
        requestsByStatusAndTitleError,
    required TResult Function(_RequestsByStatusAndTitleEmpty value)
        requestsByStatusAndTitleEmpty,
    required TResult Function(_RequestsByStatusesLoading value)
        requestsByStatusesLoading,
    required TResult Function(_RequestsByStatusesLoaded value)
        requestsByStatusesLoaded,
    required TResult Function(_RequestsByStatusesError value)
        requestsByStatusesError,
    required TResult Function(_RequestsByStatusesEmpty value)
        requestsByStatusesEmpty,
    required TResult Function(_RelateInformationLoading value)
        relateInformationLoading,
    required TResult Function(_RelateInformationLoaded value)
        relateInformationLoaded,
    required TResult Function(_RelateInformationError value)
        relateInformationError,
  }) {
    return requestsByStatusesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult? Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult? Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult? Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult? Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult? Function(_RequestsByStatusesLoaded value)?
        requestsByStatusesLoaded,
    TResult? Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult? Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult? Function(_RelateInformationLoading value)?
        relateInformationLoading,
    TResult? Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult? Function(_RelateInformationError value)? relateInformationError,
  }) {
    return requestsByStatusesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult Function(_RequestsByStatusesLoaded value)? requestsByStatusesLoaded,
    TResult Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult Function(_RelateInformationLoading value)? relateInformationLoading,
    TResult Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult Function(_RelateInformationError value)? relateInformationError,
    required TResult orElse(),
  }) {
    if (requestsByStatusesError != null) {
      return requestsByStatusesError(this);
    }
    return orElse();
  }
}

abstract class _RequestsByStatusesError implements RequestState {
  const factory _RequestsByStatusesError(final String? error) =
      _$RequestsByStatusesErrorImpl;

  String? get error;
  @JsonKey(ignore: true)
  _$$RequestsByStatusesErrorImplCopyWith<_$RequestsByStatusesErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestsByStatusesEmptyImplCopyWith<$Res> {
  factory _$$RequestsByStatusesEmptyImplCopyWith(
          _$RequestsByStatusesEmptyImpl value,
          $Res Function(_$RequestsByStatusesEmptyImpl) then) =
      __$$RequestsByStatusesEmptyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$RequestsByStatusesEmptyImplCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$RequestsByStatusesEmptyImpl>
    implements _$$RequestsByStatusesEmptyImplCopyWith<$Res> {
  __$$RequestsByStatusesEmptyImplCopyWithImpl(
      _$RequestsByStatusesEmptyImpl _value,
      $Res Function(_$RequestsByStatusesEmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$RequestsByStatusesEmptyImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RequestsByStatusesEmptyImpl implements _RequestsByStatusesEmpty {
  const _$RequestsByStatusesEmptyImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'RequestState.requestsByStatusesEmpty(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestsByStatusesEmptyImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestsByStatusesEmptyImplCopyWith<_$RequestsByStatusesEmptyImpl>
      get copyWith => __$$RequestsByStatusesEmptyImplCopyWithImpl<
          _$RequestsByStatusesEmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Request> requests, bool hasReachedMax)
        loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function(List<Request> requests)
        requestsByStatusAndTitleLoaded,
    required TResult Function() requestsByStatusAndTitleLoading,
    required TResult Function(String? error) requestsByStatusAndTitleError,
    required TResult Function(String? message) requestsByStatusAndTitleEmpty,
    required TResult Function() requestsByStatusesLoading,
    required TResult Function(List<Request> requests) requestsByStatusesLoaded,
    required TResult Function(String? error) requestsByStatusesError,
    required TResult Function(String? message) requestsByStatusesEmpty,
    required TResult Function() relateInformationLoading,
    required TResult Function(List<RelateInformation> relateInformation)
        relateInformationLoaded,
    required TResult Function(String? error) relateInformationError,
  }) {
    return requestsByStatusesEmpty(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult? Function()? requestsByStatusAndTitleLoading,
    TResult? Function(String? error)? requestsByStatusAndTitleError,
    TResult? Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult? Function()? requestsByStatusesLoading,
    TResult? Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult? Function(String? error)? requestsByStatusesError,
    TResult? Function(String? message)? requestsByStatusesEmpty,
    TResult? Function()? relateInformationLoading,
    TResult? Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult? Function(String? error)? relateInformationError,
  }) {
    return requestsByStatusesEmpty?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult Function()? requestsByStatusAndTitleLoading,
    TResult Function(String? error)? requestsByStatusAndTitleError,
    TResult Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult Function()? requestsByStatusesLoading,
    TResult Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult Function(String? error)? requestsByStatusesError,
    TResult Function(String? message)? requestsByStatusesEmpty,
    TResult Function()? relateInformationLoading,
    TResult Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult Function(String? error)? relateInformationError,
    required TResult orElse(),
  }) {
    if (requestsByStatusesEmpty != null) {
      return requestsByStatusesEmpty(message);
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
    required TResult Function(_RequestsByStatusAndTitleLoaded value)
        requestsByStatusAndTitleLoaded,
    required TResult Function(_RequestsByStatusAndTitleLoading value)
        requestsByStatusAndTitleLoading,
    required TResult Function(_RequestsByStatusAndTitleError value)
        requestsByStatusAndTitleError,
    required TResult Function(_RequestsByStatusAndTitleEmpty value)
        requestsByStatusAndTitleEmpty,
    required TResult Function(_RequestsByStatusesLoading value)
        requestsByStatusesLoading,
    required TResult Function(_RequestsByStatusesLoaded value)
        requestsByStatusesLoaded,
    required TResult Function(_RequestsByStatusesError value)
        requestsByStatusesError,
    required TResult Function(_RequestsByStatusesEmpty value)
        requestsByStatusesEmpty,
    required TResult Function(_RelateInformationLoading value)
        relateInformationLoading,
    required TResult Function(_RelateInformationLoaded value)
        relateInformationLoaded,
    required TResult Function(_RelateInformationError value)
        relateInformationError,
  }) {
    return requestsByStatusesEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult? Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult? Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult? Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult? Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult? Function(_RequestsByStatusesLoaded value)?
        requestsByStatusesLoaded,
    TResult? Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult? Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult? Function(_RelateInformationLoading value)?
        relateInformationLoading,
    TResult? Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult? Function(_RelateInformationError value)? relateInformationError,
  }) {
    return requestsByStatusesEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult Function(_RequestsByStatusesLoaded value)? requestsByStatusesLoaded,
    TResult Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult Function(_RelateInformationLoading value)? relateInformationLoading,
    TResult Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult Function(_RelateInformationError value)? relateInformationError,
    required TResult orElse(),
  }) {
    if (requestsByStatusesEmpty != null) {
      return requestsByStatusesEmpty(this);
    }
    return orElse();
  }
}

abstract class _RequestsByStatusesEmpty implements RequestState {
  const factory _RequestsByStatusesEmpty(final String? message) =
      _$RequestsByStatusesEmptyImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$RequestsByStatusesEmptyImplCopyWith<_$RequestsByStatusesEmptyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RelateInformationLoadingImplCopyWith<$Res> {
  factory _$$RelateInformationLoadingImplCopyWith(
          _$RelateInformationLoadingImpl value,
          $Res Function(_$RelateInformationLoadingImpl) then) =
      __$$RelateInformationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RelateInformationLoadingImplCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$RelateInformationLoadingImpl>
    implements _$$RelateInformationLoadingImplCopyWith<$Res> {
  __$$RelateInformationLoadingImplCopyWithImpl(
      _$RelateInformationLoadingImpl _value,
      $Res Function(_$RelateInformationLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RelateInformationLoadingImpl implements _RelateInformationLoading {
  const _$RelateInformationLoadingImpl();

  @override
  String toString() {
    return 'RequestState.relateInformationLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelateInformationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Request> requests, bool hasReachedMax)
        loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function(List<Request> requests)
        requestsByStatusAndTitleLoaded,
    required TResult Function() requestsByStatusAndTitleLoading,
    required TResult Function(String? error) requestsByStatusAndTitleError,
    required TResult Function(String? message) requestsByStatusAndTitleEmpty,
    required TResult Function() requestsByStatusesLoading,
    required TResult Function(List<Request> requests) requestsByStatusesLoaded,
    required TResult Function(String? error) requestsByStatusesError,
    required TResult Function(String? message) requestsByStatusesEmpty,
    required TResult Function() relateInformationLoading,
    required TResult Function(List<RelateInformation> relateInformation)
        relateInformationLoaded,
    required TResult Function(String? error) relateInformationError,
  }) {
    return relateInformationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult? Function()? requestsByStatusAndTitleLoading,
    TResult? Function(String? error)? requestsByStatusAndTitleError,
    TResult? Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult? Function()? requestsByStatusesLoading,
    TResult? Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult? Function(String? error)? requestsByStatusesError,
    TResult? Function(String? message)? requestsByStatusesEmpty,
    TResult? Function()? relateInformationLoading,
    TResult? Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult? Function(String? error)? relateInformationError,
  }) {
    return relateInformationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult Function()? requestsByStatusAndTitleLoading,
    TResult Function(String? error)? requestsByStatusAndTitleError,
    TResult Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult Function()? requestsByStatusesLoading,
    TResult Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult Function(String? error)? requestsByStatusesError,
    TResult Function(String? message)? requestsByStatusesEmpty,
    TResult Function()? relateInformationLoading,
    TResult Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult Function(String? error)? relateInformationError,
    required TResult orElse(),
  }) {
    if (relateInformationLoading != null) {
      return relateInformationLoading();
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
    required TResult Function(_RequestsByStatusAndTitleLoaded value)
        requestsByStatusAndTitleLoaded,
    required TResult Function(_RequestsByStatusAndTitleLoading value)
        requestsByStatusAndTitleLoading,
    required TResult Function(_RequestsByStatusAndTitleError value)
        requestsByStatusAndTitleError,
    required TResult Function(_RequestsByStatusAndTitleEmpty value)
        requestsByStatusAndTitleEmpty,
    required TResult Function(_RequestsByStatusesLoading value)
        requestsByStatusesLoading,
    required TResult Function(_RequestsByStatusesLoaded value)
        requestsByStatusesLoaded,
    required TResult Function(_RequestsByStatusesError value)
        requestsByStatusesError,
    required TResult Function(_RequestsByStatusesEmpty value)
        requestsByStatusesEmpty,
    required TResult Function(_RelateInformationLoading value)
        relateInformationLoading,
    required TResult Function(_RelateInformationLoaded value)
        relateInformationLoaded,
    required TResult Function(_RelateInformationError value)
        relateInformationError,
  }) {
    return relateInformationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult? Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult? Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult? Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult? Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult? Function(_RequestsByStatusesLoaded value)?
        requestsByStatusesLoaded,
    TResult? Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult? Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult? Function(_RelateInformationLoading value)?
        relateInformationLoading,
    TResult? Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult? Function(_RelateInformationError value)? relateInformationError,
  }) {
    return relateInformationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult Function(_RequestsByStatusesLoaded value)? requestsByStatusesLoaded,
    TResult Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult Function(_RelateInformationLoading value)? relateInformationLoading,
    TResult Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult Function(_RelateInformationError value)? relateInformationError,
    required TResult orElse(),
  }) {
    if (relateInformationLoading != null) {
      return relateInformationLoading(this);
    }
    return orElse();
  }
}

abstract class _RelateInformationLoading implements RequestState {
  const factory _RelateInformationLoading() = _$RelateInformationLoadingImpl;
}

/// @nodoc
abstract class _$$RelateInformationLoadedImplCopyWith<$Res> {
  factory _$$RelateInformationLoadedImplCopyWith(
          _$RelateInformationLoadedImpl value,
          $Res Function(_$RelateInformationLoadedImpl) then) =
      __$$RelateInformationLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RelateInformation> relateInformation});
}

/// @nodoc
class __$$RelateInformationLoadedImplCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$RelateInformationLoadedImpl>
    implements _$$RelateInformationLoadedImplCopyWith<$Res> {
  __$$RelateInformationLoadedImplCopyWithImpl(
      _$RelateInformationLoadedImpl _value,
      $Res Function(_$RelateInformationLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relateInformation = null,
  }) {
    return _then(_$RelateInformationLoadedImpl(
      relateInformation: null == relateInformation
          ? _value._relateInformation
          : relateInformation // ignore: cast_nullable_to_non_nullable
              as List<RelateInformation>,
    ));
  }
}

/// @nodoc

class _$RelateInformationLoadedImpl implements _RelateInformationLoaded {
  const _$RelateInformationLoadedImpl(
      {required final List<RelateInformation> relateInformation})
      : _relateInformation = relateInformation;

  final List<RelateInformation> _relateInformation;
  @override
  List<RelateInformation> get relateInformation {
    if (_relateInformation is EqualUnmodifiableListView)
      return _relateInformation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relateInformation);
  }

  @override
  String toString() {
    return 'RequestState.relateInformationLoaded(relateInformation: $relateInformation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelateInformationLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._relateInformation, _relateInformation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_relateInformation));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelateInformationLoadedImplCopyWith<_$RelateInformationLoadedImpl>
      get copyWith => __$$RelateInformationLoadedImplCopyWithImpl<
          _$RelateInformationLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Request> requests, bool hasReachedMax)
        loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function(List<Request> requests)
        requestsByStatusAndTitleLoaded,
    required TResult Function() requestsByStatusAndTitleLoading,
    required TResult Function(String? error) requestsByStatusAndTitleError,
    required TResult Function(String? message) requestsByStatusAndTitleEmpty,
    required TResult Function() requestsByStatusesLoading,
    required TResult Function(List<Request> requests) requestsByStatusesLoaded,
    required TResult Function(String? error) requestsByStatusesError,
    required TResult Function(String? message) requestsByStatusesEmpty,
    required TResult Function() relateInformationLoading,
    required TResult Function(List<RelateInformation> relateInformation)
        relateInformationLoaded,
    required TResult Function(String? error) relateInformationError,
  }) {
    return relateInformationLoaded(relateInformation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult? Function()? requestsByStatusAndTitleLoading,
    TResult? Function(String? error)? requestsByStatusAndTitleError,
    TResult? Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult? Function()? requestsByStatusesLoading,
    TResult? Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult? Function(String? error)? requestsByStatusesError,
    TResult? Function(String? message)? requestsByStatusesEmpty,
    TResult? Function()? relateInformationLoading,
    TResult? Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult? Function(String? error)? relateInformationError,
  }) {
    return relateInformationLoaded?.call(relateInformation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult Function()? requestsByStatusAndTitleLoading,
    TResult Function(String? error)? requestsByStatusAndTitleError,
    TResult Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult Function()? requestsByStatusesLoading,
    TResult Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult Function(String? error)? requestsByStatusesError,
    TResult Function(String? message)? requestsByStatusesEmpty,
    TResult Function()? relateInformationLoading,
    TResult Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult Function(String? error)? relateInformationError,
    required TResult orElse(),
  }) {
    if (relateInformationLoaded != null) {
      return relateInformationLoaded(relateInformation);
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
    required TResult Function(_RequestsByStatusAndTitleLoaded value)
        requestsByStatusAndTitleLoaded,
    required TResult Function(_RequestsByStatusAndTitleLoading value)
        requestsByStatusAndTitleLoading,
    required TResult Function(_RequestsByStatusAndTitleError value)
        requestsByStatusAndTitleError,
    required TResult Function(_RequestsByStatusAndTitleEmpty value)
        requestsByStatusAndTitleEmpty,
    required TResult Function(_RequestsByStatusesLoading value)
        requestsByStatusesLoading,
    required TResult Function(_RequestsByStatusesLoaded value)
        requestsByStatusesLoaded,
    required TResult Function(_RequestsByStatusesError value)
        requestsByStatusesError,
    required TResult Function(_RequestsByStatusesEmpty value)
        requestsByStatusesEmpty,
    required TResult Function(_RelateInformationLoading value)
        relateInformationLoading,
    required TResult Function(_RelateInformationLoaded value)
        relateInformationLoaded,
    required TResult Function(_RelateInformationError value)
        relateInformationError,
  }) {
    return relateInformationLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult? Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult? Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult? Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult? Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult? Function(_RequestsByStatusesLoaded value)?
        requestsByStatusesLoaded,
    TResult? Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult? Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult? Function(_RelateInformationLoading value)?
        relateInformationLoading,
    TResult? Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult? Function(_RelateInformationError value)? relateInformationError,
  }) {
    return relateInformationLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult Function(_RequestsByStatusesLoaded value)? requestsByStatusesLoaded,
    TResult Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult Function(_RelateInformationLoading value)? relateInformationLoading,
    TResult Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult Function(_RelateInformationError value)? relateInformationError,
    required TResult orElse(),
  }) {
    if (relateInformationLoaded != null) {
      return relateInformationLoaded(this);
    }
    return orElse();
  }
}

abstract class _RelateInformationLoaded implements RequestState {
  const factory _RelateInformationLoaded(
          {required final List<RelateInformation> relateInformation}) =
      _$RelateInformationLoadedImpl;

  List<RelateInformation> get relateInformation;
  @JsonKey(ignore: true)
  _$$RelateInformationLoadedImplCopyWith<_$RelateInformationLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RelateInformationErrorImplCopyWith<$Res> {
  factory _$$RelateInformationErrorImplCopyWith(
          _$RelateInformationErrorImpl value,
          $Res Function(_$RelateInformationErrorImpl) then) =
      __$$RelateInformationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$RelateInformationErrorImplCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$RelateInformationErrorImpl>
    implements _$$RelateInformationErrorImplCopyWith<$Res> {
  __$$RelateInformationErrorImplCopyWithImpl(
      _$RelateInformationErrorImpl _value,
      $Res Function(_$RelateInformationErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$RelateInformationErrorImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RelateInformationErrorImpl implements _RelateInformationError {
  const _$RelateInformationErrorImpl(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'RequestState.relateInformationError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelateInformationErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelateInformationErrorImplCopyWith<_$RelateInformationErrorImpl>
      get copyWith => __$$RelateInformationErrorImplCopyWithImpl<
          _$RelateInformationErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Request> requests, bool hasReachedMax)
        loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function(List<Request> requests)
        requestsByStatusAndTitleLoaded,
    required TResult Function() requestsByStatusAndTitleLoading,
    required TResult Function(String? error) requestsByStatusAndTitleError,
    required TResult Function(String? message) requestsByStatusAndTitleEmpty,
    required TResult Function() requestsByStatusesLoading,
    required TResult Function(List<Request> requests) requestsByStatusesLoaded,
    required TResult Function(String? error) requestsByStatusesError,
    required TResult Function(String? message) requestsByStatusesEmpty,
    required TResult Function() relateInformationLoading,
    required TResult Function(List<RelateInformation> relateInformation)
        relateInformationLoaded,
    required TResult Function(String? error) relateInformationError,
  }) {
    return relateInformationError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult? Function()? requestsByStatusAndTitleLoading,
    TResult? Function(String? error)? requestsByStatusAndTitleError,
    TResult? Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult? Function()? requestsByStatusesLoading,
    TResult? Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult? Function(String? error)? requestsByStatusesError,
    TResult? Function(String? message)? requestsByStatusesEmpty,
    TResult? Function()? relateInformationLoading,
    TResult? Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult? Function(String? error)? relateInformationError,
  }) {
    return relateInformationError?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Request> requests, bool hasReachedMax)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function(List<Request> requests)? requestsByStatusAndTitleLoaded,
    TResult Function()? requestsByStatusAndTitleLoading,
    TResult Function(String? error)? requestsByStatusAndTitleError,
    TResult Function(String? message)? requestsByStatusAndTitleEmpty,
    TResult Function()? requestsByStatusesLoading,
    TResult Function(List<Request> requests)? requestsByStatusesLoaded,
    TResult Function(String? error)? requestsByStatusesError,
    TResult Function(String? message)? requestsByStatusesEmpty,
    TResult Function()? relateInformationLoading,
    TResult Function(List<RelateInformation> relateInformation)?
        relateInformationLoaded,
    TResult Function(String? error)? relateInformationError,
    required TResult orElse(),
  }) {
    if (relateInformationError != null) {
      return relateInformationError(this.error);
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
    required TResult Function(_RequestsByStatusAndTitleLoaded value)
        requestsByStatusAndTitleLoaded,
    required TResult Function(_RequestsByStatusAndTitleLoading value)
        requestsByStatusAndTitleLoading,
    required TResult Function(_RequestsByStatusAndTitleError value)
        requestsByStatusAndTitleError,
    required TResult Function(_RequestsByStatusAndTitleEmpty value)
        requestsByStatusAndTitleEmpty,
    required TResult Function(_RequestsByStatusesLoading value)
        requestsByStatusesLoading,
    required TResult Function(_RequestsByStatusesLoaded value)
        requestsByStatusesLoaded,
    required TResult Function(_RequestsByStatusesError value)
        requestsByStatusesError,
    required TResult Function(_RequestsByStatusesEmpty value)
        requestsByStatusesEmpty,
    required TResult Function(_RelateInformationLoading value)
        relateInformationLoading,
    required TResult Function(_RelateInformationLoaded value)
        relateInformationLoaded,
    required TResult Function(_RelateInformationError value)
        relateInformationError,
  }) {
    return relateInformationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult? Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult? Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult? Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult? Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult? Function(_RequestsByStatusesLoaded value)?
        requestsByStatusesLoaded,
    TResult? Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult? Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult? Function(_RelateInformationLoading value)?
        relateInformationLoading,
    TResult? Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult? Function(_RelateInformationError value)? relateInformationError,
  }) {
    return relateInformationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_RequestsByStatusAndTitleLoaded value)?
        requestsByStatusAndTitleLoaded,
    TResult Function(_RequestsByStatusAndTitleLoading value)?
        requestsByStatusAndTitleLoading,
    TResult Function(_RequestsByStatusAndTitleError value)?
        requestsByStatusAndTitleError,
    TResult Function(_RequestsByStatusAndTitleEmpty value)?
        requestsByStatusAndTitleEmpty,
    TResult Function(_RequestsByStatusesLoading value)?
        requestsByStatusesLoading,
    TResult Function(_RequestsByStatusesLoaded value)? requestsByStatusesLoaded,
    TResult Function(_RequestsByStatusesError value)? requestsByStatusesError,
    TResult Function(_RequestsByStatusesEmpty value)? requestsByStatusesEmpty,
    TResult Function(_RelateInformationLoading value)? relateInformationLoading,
    TResult Function(_RelateInformationLoaded value)? relateInformationLoaded,
    TResult Function(_RelateInformationError value)? relateInformationError,
    required TResult orElse(),
  }) {
    if (relateInformationError != null) {
      return relateInformationError(this);
    }
    return orElse();
  }
}

abstract class _RelateInformationError implements RequestState {
  const factory _RelateInformationError(final String? error) =
      _$RelateInformationErrorImpl;

  String? get error;
  @JsonKey(ignore: true)
  _$$RelateInformationErrorImplCopyWith<_$RelateInformationErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
