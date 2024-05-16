// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WarehouseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(String id) fetchWarehouse,
    required TResult Function() fetchWarehouses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(String id)? fetchWarehouse,
    TResult? Function()? fetchWarehouses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(String id)? fetchWarehouse,
    TResult Function()? fetchWarehouses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_FetchWarehouse value) fetchWarehouse,
    required TResult Function(_FetchWarehouses value) fetchWarehouses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_FetchWarehouse value)? fetchWarehouse,
    TResult? Function(_FetchWarehouses value)? fetchWarehouses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_FetchWarehouse value)? fetchWarehouse,
    TResult Function(_FetchWarehouses value)? fetchWarehouses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseEventCopyWith<$Res> {
  factory $WarehouseEventCopyWith(
          WarehouseEvent value, $Res Function(WarehouseEvent) then) =
      _$WarehouseEventCopyWithImpl<$Res, WarehouseEvent>;
}

/// @nodoc
class _$WarehouseEventCopyWithImpl<$Res, $Val extends WarehouseEvent>
    implements $WarehouseEventCopyWith<$Res> {
  _$WarehouseEventCopyWithImpl(this._value, this._then);

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
    extends _$WarehouseEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'WarehouseEvent.started()';
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
    required TResult Function(String id) fetchWarehouse,
    required TResult Function() fetchWarehouses,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(String id)? fetchWarehouse,
    TResult? Function()? fetchWarehouses,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(String id)? fetchWarehouse,
    TResult Function()? fetchWarehouses,
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
    required TResult Function(_FetchWarehouse value) fetchWarehouse,
    required TResult Function(_FetchWarehouses value) fetchWarehouses,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_FetchWarehouse value)? fetchWarehouse,
    TResult? Function(_FetchWarehouses value)? fetchWarehouses,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_FetchWarehouse value)? fetchWarehouse,
    TResult Function(_FetchWarehouses value)? fetchWarehouses,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements WarehouseEvent {
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
    extends _$WarehouseEventCopyWithImpl<$Res, _$LoadMoreImpl>
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
    return 'WarehouseEvent.loadMore()';
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
    required TResult Function(String id) fetchWarehouse,
    required TResult Function() fetchWarehouses,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(String id)? fetchWarehouse,
    TResult? Function()? fetchWarehouses,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(String id)? fetchWarehouse,
    TResult Function()? fetchWarehouses,
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
    required TResult Function(_FetchWarehouse value) fetchWarehouse,
    required TResult Function(_FetchWarehouses value) fetchWarehouses,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_FetchWarehouse value)? fetchWarehouse,
    TResult? Function(_FetchWarehouses value)? fetchWarehouses,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_FetchWarehouse value)? fetchWarehouse,
    TResult Function(_FetchWarehouses value)? fetchWarehouses,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements WarehouseEvent {
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
    extends _$WarehouseEventCopyWithImpl<$Res, _$RefreshImpl>
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
    return 'WarehouseEvent.refresh()';
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
    required TResult Function(String id) fetchWarehouse,
    required TResult Function() fetchWarehouses,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(String id)? fetchWarehouse,
    TResult? Function()? fetchWarehouses,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(String id)? fetchWarehouse,
    TResult Function()? fetchWarehouses,
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
    required TResult Function(_FetchWarehouse value) fetchWarehouse,
    required TResult Function(_FetchWarehouses value) fetchWarehouses,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_FetchWarehouse value)? fetchWarehouse,
    TResult? Function(_FetchWarehouses value)? fetchWarehouses,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_FetchWarehouse value)? fetchWarehouse,
    TResult Function(_FetchWarehouses value)? fetchWarehouses,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements WarehouseEvent {
  const factory _Refresh() = _$RefreshImpl;
}

/// @nodoc
abstract class _$$FetchWarehouseImplCopyWith<$Res> {
  factory _$$FetchWarehouseImplCopyWith(_$FetchWarehouseImpl value,
          $Res Function(_$FetchWarehouseImpl) then) =
      __$$FetchWarehouseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$FetchWarehouseImplCopyWithImpl<$Res>
    extends _$WarehouseEventCopyWithImpl<$Res, _$FetchWarehouseImpl>
    implements _$$FetchWarehouseImplCopyWith<$Res> {
  __$$FetchWarehouseImplCopyWithImpl(
      _$FetchWarehouseImpl _value, $Res Function(_$FetchWarehouseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$FetchWarehouseImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchWarehouseImpl implements _FetchWarehouse {
  const _$FetchWarehouseImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'WarehouseEvent.fetchWarehouse(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWarehouseImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchWarehouseImplCopyWith<_$FetchWarehouseImpl> get copyWith =>
      __$$FetchWarehouseImplCopyWithImpl<_$FetchWarehouseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(String id) fetchWarehouse,
    required TResult Function() fetchWarehouses,
  }) {
    return fetchWarehouse(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(String id)? fetchWarehouse,
    TResult? Function()? fetchWarehouses,
  }) {
    return fetchWarehouse?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(String id)? fetchWarehouse,
    TResult Function()? fetchWarehouses,
    required TResult orElse(),
  }) {
    if (fetchWarehouse != null) {
      return fetchWarehouse(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_FetchWarehouse value) fetchWarehouse,
    required TResult Function(_FetchWarehouses value) fetchWarehouses,
  }) {
    return fetchWarehouse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_FetchWarehouse value)? fetchWarehouse,
    TResult? Function(_FetchWarehouses value)? fetchWarehouses,
  }) {
    return fetchWarehouse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_FetchWarehouse value)? fetchWarehouse,
    TResult Function(_FetchWarehouses value)? fetchWarehouses,
    required TResult orElse(),
  }) {
    if (fetchWarehouse != null) {
      return fetchWarehouse(this);
    }
    return orElse();
  }
}

abstract class _FetchWarehouse implements WarehouseEvent {
  const factory _FetchWarehouse(final String id) = _$FetchWarehouseImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$FetchWarehouseImplCopyWith<_$FetchWarehouseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchWarehousesImplCopyWith<$Res> {
  factory _$$FetchWarehousesImplCopyWith(_$FetchWarehousesImpl value,
          $Res Function(_$FetchWarehousesImpl) then) =
      __$$FetchWarehousesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchWarehousesImplCopyWithImpl<$Res>
    extends _$WarehouseEventCopyWithImpl<$Res, _$FetchWarehousesImpl>
    implements _$$FetchWarehousesImplCopyWith<$Res> {
  __$$FetchWarehousesImplCopyWithImpl(
      _$FetchWarehousesImpl _value, $Res Function(_$FetchWarehousesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchWarehousesImpl implements _FetchWarehouses {
  const _$FetchWarehousesImpl();

  @override
  String toString() {
    return 'WarehouseEvent.fetchWarehouses()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchWarehousesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(String id) fetchWarehouse,
    required TResult Function() fetchWarehouses,
  }) {
    return fetchWarehouses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(String id)? fetchWarehouse,
    TResult? Function()? fetchWarehouses,
  }) {
    return fetchWarehouses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(String id)? fetchWarehouse,
    TResult Function()? fetchWarehouses,
    required TResult orElse(),
  }) {
    if (fetchWarehouses != null) {
      return fetchWarehouses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_FetchWarehouse value) fetchWarehouse,
    required TResult Function(_FetchWarehouses value) fetchWarehouses,
  }) {
    return fetchWarehouses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_FetchWarehouse value)? fetchWarehouse,
    TResult? Function(_FetchWarehouses value)? fetchWarehouses,
  }) {
    return fetchWarehouses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_FetchWarehouse value)? fetchWarehouse,
    TResult Function(_FetchWarehouses value)? fetchWarehouses,
    required TResult orElse(),
  }) {
    if (fetchWarehouses != null) {
      return fetchWarehouses(this);
    }
    return orElse();
  }
}

abstract class _FetchWarehouses implements WarehouseEvent {
  const factory _FetchWarehouses() = _$FetchWarehousesImpl;
}

/// @nodoc
mixin _$WarehouseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Warehouse> warehouses) loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function() detailLoading,
    required TResult Function(Warehouse warehouse) detailLoaded,
    required TResult Function(String? error) detailError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Warehouse> warehouses)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? detailLoading,
    TResult? Function(Warehouse warehouse)? detailLoaded,
    TResult? Function(String? error)? detailError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Warehouse> warehouses)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function()? detailLoading,
    TResult Function(Warehouse warehouse)? detailLoaded,
    TResult Function(String? error)? detailError,
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
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_DetailError value) detailError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_DetailError value)? detailError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_DetailError value)? detailError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseStateCopyWith<$Res> {
  factory $WarehouseStateCopyWith(
          WarehouseState value, $Res Function(WarehouseState) then) =
      _$WarehouseStateCopyWithImpl<$Res, WarehouseState>;
}

/// @nodoc
class _$WarehouseStateCopyWithImpl<$Res, $Val extends WarehouseState>
    implements $WarehouseStateCopyWith<$Res> {
  _$WarehouseStateCopyWithImpl(this._value, this._then);

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
    extends _$WarehouseStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'WarehouseState.initial()';
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
    required TResult Function(List<Warehouse> warehouses) loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function() detailLoading,
    required TResult Function(Warehouse warehouse) detailLoaded,
    required TResult Function(String? error) detailError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Warehouse> warehouses)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? detailLoading,
    TResult? Function(Warehouse warehouse)? detailLoaded,
    TResult? Function(String? error)? detailError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Warehouse> warehouses)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function()? detailLoading,
    TResult Function(Warehouse warehouse)? detailLoaded,
    TResult Function(String? error)? detailError,
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
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_DetailError value) detailError,
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
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_DetailError value)? detailError,
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
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_DetailError value)? detailError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WarehouseState {
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
    extends _$WarehouseStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'WarehouseState.loading()';
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
    required TResult Function(List<Warehouse> warehouses) loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function() detailLoading,
    required TResult Function(Warehouse warehouse) detailLoaded,
    required TResult Function(String? error) detailError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Warehouse> warehouses)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? detailLoading,
    TResult? Function(Warehouse warehouse)? detailLoaded,
    TResult? Function(String? error)? detailError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Warehouse> warehouses)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function()? detailLoading,
    TResult Function(Warehouse warehouse)? detailLoaded,
    TResult Function(String? error)? detailError,
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
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_DetailError value) detailError,
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
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_DetailError value)? detailError,
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
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_DetailError value)? detailError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements WarehouseState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Warehouse> warehouses});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$WarehouseStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? warehouses = null,
  }) {
    return _then(_$LoadedImpl(
      warehouses: null == warehouses
          ? _value._warehouses
          : warehouses // ignore: cast_nullable_to_non_nullable
              as List<Warehouse>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<Warehouse> warehouses})
      : _warehouses = warehouses;

  final List<Warehouse> _warehouses;
  @override
  List<Warehouse> get warehouses {
    if (_warehouses is EqualUnmodifiableListView) return _warehouses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_warehouses);
  }

  @override
  String toString() {
    return 'WarehouseState.loaded(warehouses: $warehouses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._warehouses, _warehouses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_warehouses));

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
    required TResult Function(List<Warehouse> warehouses) loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function() detailLoading,
    required TResult Function(Warehouse warehouse) detailLoaded,
    required TResult Function(String? error) detailError,
  }) {
    return loaded(warehouses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Warehouse> warehouses)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? detailLoading,
    TResult? Function(Warehouse warehouse)? detailLoaded,
    TResult? Function(String? error)? detailError,
  }) {
    return loaded?.call(warehouses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Warehouse> warehouses)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function()? detailLoading,
    TResult Function(Warehouse warehouse)? detailLoaded,
    TResult Function(String? error)? detailError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(warehouses);
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
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_DetailError value) detailError,
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
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_DetailError value)? detailError,
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
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_DetailError value)? detailError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements WarehouseState {
  const factory _Loaded({required final List<Warehouse> warehouses}) =
      _$LoadedImpl;

  List<Warehouse> get warehouses;
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
    extends _$WarehouseStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'WarehouseState.error(error: $error)';
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
    required TResult Function(List<Warehouse> warehouses) loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function() detailLoading,
    required TResult Function(Warehouse warehouse) detailLoaded,
    required TResult Function(String? error) detailError,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Warehouse> warehouses)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? detailLoading,
    TResult? Function(Warehouse warehouse)? detailLoaded,
    TResult? Function(String? error)? detailError,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Warehouse> warehouses)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function()? detailLoading,
    TResult Function(Warehouse warehouse)? detailLoaded,
    TResult Function(String? error)? detailError,
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
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_DetailError value) detailError,
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
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_DetailError value)? detailError,
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
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_DetailError value)? detailError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements WarehouseState {
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
    extends _$WarehouseStateCopyWithImpl<$Res, _$EmptyImpl>
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
    return 'WarehouseState.empty(message: $message)';
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
    required TResult Function(List<Warehouse> warehouses) loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function() detailLoading,
    required TResult Function(Warehouse warehouse) detailLoaded,
    required TResult Function(String? error) detailError,
  }) {
    return empty(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Warehouse> warehouses)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? detailLoading,
    TResult? Function(Warehouse warehouse)? detailLoaded,
    TResult? Function(String? error)? detailError,
  }) {
    return empty?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Warehouse> warehouses)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function()? detailLoading,
    TResult Function(Warehouse warehouse)? detailLoaded,
    TResult Function(String? error)? detailError,
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
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_DetailError value) detailError,
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
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_DetailError value)? detailError,
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
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_DetailError value)? detailError,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements WarehouseState {
  const factory _Empty(final String? message) = _$EmptyImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailLoadingImplCopyWith<$Res> {
  factory _$$DetailLoadingImplCopyWith(
          _$DetailLoadingImpl value, $Res Function(_$DetailLoadingImpl) then) =
      __$$DetailLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailLoadingImplCopyWithImpl<$Res>
    extends _$WarehouseStateCopyWithImpl<$Res, _$DetailLoadingImpl>
    implements _$$DetailLoadingImplCopyWith<$Res> {
  __$$DetailLoadingImplCopyWithImpl(
      _$DetailLoadingImpl _value, $Res Function(_$DetailLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DetailLoadingImpl implements _DetailLoading {
  const _$DetailLoadingImpl();

  @override
  String toString() {
    return 'WarehouseState.detailLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DetailLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Warehouse> warehouses) loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function() detailLoading,
    required TResult Function(Warehouse warehouse) detailLoaded,
    required TResult Function(String? error) detailError,
  }) {
    return detailLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Warehouse> warehouses)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? detailLoading,
    TResult? Function(Warehouse warehouse)? detailLoaded,
    TResult? Function(String? error)? detailError,
  }) {
    return detailLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Warehouse> warehouses)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function()? detailLoading,
    TResult Function(Warehouse warehouse)? detailLoaded,
    TResult Function(String? error)? detailError,
    required TResult orElse(),
  }) {
    if (detailLoading != null) {
      return detailLoading();
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
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_DetailError value) detailError,
  }) {
    return detailLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_DetailError value)? detailError,
  }) {
    return detailLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_DetailError value)? detailError,
    required TResult orElse(),
  }) {
    if (detailLoading != null) {
      return detailLoading(this);
    }
    return orElse();
  }
}

abstract class _DetailLoading implements WarehouseState {
  const factory _DetailLoading() = _$DetailLoadingImpl;
}

/// @nodoc
abstract class _$$DetailLoadedImplCopyWith<$Res> {
  factory _$$DetailLoadedImplCopyWith(
          _$DetailLoadedImpl value, $Res Function(_$DetailLoadedImpl) then) =
      __$$DetailLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Warehouse warehouse});

  $WarehouseCopyWith<$Res> get warehouse;
}

/// @nodoc
class __$$DetailLoadedImplCopyWithImpl<$Res>
    extends _$WarehouseStateCopyWithImpl<$Res, _$DetailLoadedImpl>
    implements _$$DetailLoadedImplCopyWith<$Res> {
  __$$DetailLoadedImplCopyWithImpl(
      _$DetailLoadedImpl _value, $Res Function(_$DetailLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? warehouse = null,
  }) {
    return _then(_$DetailLoadedImpl(
      warehouse: null == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as Warehouse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WarehouseCopyWith<$Res> get warehouse {
    return $WarehouseCopyWith<$Res>(_value.warehouse, (value) {
      return _then(_value.copyWith(warehouse: value));
    });
  }
}

/// @nodoc

class _$DetailLoadedImpl implements _DetailLoaded {
  const _$DetailLoadedImpl({required this.warehouse});

  @override
  final Warehouse warehouse;

  @override
  String toString() {
    return 'WarehouseState.detailLoaded(warehouse: $warehouse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailLoadedImpl &&
            (identical(other.warehouse, warehouse) ||
                other.warehouse == warehouse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, warehouse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailLoadedImplCopyWith<_$DetailLoadedImpl> get copyWith =>
      __$$DetailLoadedImplCopyWithImpl<_$DetailLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Warehouse> warehouses) loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function() detailLoading,
    required TResult Function(Warehouse warehouse) detailLoaded,
    required TResult Function(String? error) detailError,
  }) {
    return detailLoaded(warehouse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Warehouse> warehouses)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? detailLoading,
    TResult? Function(Warehouse warehouse)? detailLoaded,
    TResult? Function(String? error)? detailError,
  }) {
    return detailLoaded?.call(warehouse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Warehouse> warehouses)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function()? detailLoading,
    TResult Function(Warehouse warehouse)? detailLoaded,
    TResult Function(String? error)? detailError,
    required TResult orElse(),
  }) {
    if (detailLoaded != null) {
      return detailLoaded(warehouse);
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
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_DetailError value) detailError,
  }) {
    return detailLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_DetailError value)? detailError,
  }) {
    return detailLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_DetailError value)? detailError,
    required TResult orElse(),
  }) {
    if (detailLoaded != null) {
      return detailLoaded(this);
    }
    return orElse();
  }
}

abstract class _DetailLoaded implements WarehouseState {
  const factory _DetailLoaded({required final Warehouse warehouse}) =
      _$DetailLoadedImpl;

  Warehouse get warehouse;
  @JsonKey(ignore: true)
  _$$DetailLoadedImplCopyWith<_$DetailLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailErrorImplCopyWith<$Res> {
  factory _$$DetailErrorImplCopyWith(
          _$DetailErrorImpl value, $Res Function(_$DetailErrorImpl) then) =
      __$$DetailErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$DetailErrorImplCopyWithImpl<$Res>
    extends _$WarehouseStateCopyWithImpl<$Res, _$DetailErrorImpl>
    implements _$$DetailErrorImplCopyWith<$Res> {
  __$$DetailErrorImplCopyWithImpl(
      _$DetailErrorImpl _value, $Res Function(_$DetailErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$DetailErrorImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DetailErrorImpl implements _DetailError {
  const _$DetailErrorImpl(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'WarehouseState.detailError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailErrorImplCopyWith<_$DetailErrorImpl> get copyWith =>
      __$$DetailErrorImplCopyWithImpl<_$DetailErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Warehouse> warehouses) loaded,
    required TResult Function(String? error) error,
    required TResult Function(String? message) empty,
    required TResult Function() detailLoading,
    required TResult Function(Warehouse warehouse) detailLoaded,
    required TResult Function(String? error) detailError,
  }) {
    return detailError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Warehouse> warehouses)? loaded,
    TResult? Function(String? error)? error,
    TResult? Function(String? message)? empty,
    TResult? Function()? detailLoading,
    TResult? Function(Warehouse warehouse)? detailLoaded,
    TResult? Function(String? error)? detailError,
  }) {
    return detailError?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Warehouse> warehouses)? loaded,
    TResult Function(String? error)? error,
    TResult Function(String? message)? empty,
    TResult Function()? detailLoading,
    TResult Function(Warehouse warehouse)? detailLoaded,
    TResult Function(String? error)? detailError,
    required TResult orElse(),
  }) {
    if (detailError != null) {
      return detailError(this.error);
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
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_DetailError value) detailError,
  }) {
    return detailError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_DetailError value)? detailError,
  }) {
    return detailError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_DetailError value)? detailError,
    required TResult orElse(),
  }) {
    if (detailError != null) {
      return detailError(this);
    }
    return orElse();
  }
}

abstract class _DetailError implements WarehouseState {
  const factory _DetailError(final String? error) = _$DetailErrorImpl;

  String? get error;
  @JsonKey(ignore: true)
  _$$DetailErrorImplCopyWith<_$DetailErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
