// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_scan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QrScanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(QrCodeData data) qrCodeScanned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(QrCodeData data)? qrCodeScanned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(QrCodeData data)? qrCodeScanned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_QRCodeScanned value) qrCodeScanned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_QRCodeScanned value)? qrCodeScanned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QRCodeScanned value)? qrCodeScanned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrScanEventCopyWith<$Res> {
  factory $QrScanEventCopyWith(
          QrScanEvent value, $Res Function(QrScanEvent) then) =
      _$QrScanEventCopyWithImpl<$Res, QrScanEvent>;
}

/// @nodoc
class _$QrScanEventCopyWithImpl<$Res, $Val extends QrScanEvent>
    implements $QrScanEventCopyWith<$Res> {
  _$QrScanEventCopyWithImpl(this._value, this._then);

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
    extends _$QrScanEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'QrScanEvent.started()';
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
    required TResult Function(QrCodeData data) qrCodeScanned,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(QrCodeData data)? qrCodeScanned,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(QrCodeData data)? qrCodeScanned,
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
    required TResult Function(_QRCodeScanned value) qrCodeScanned,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_QRCodeScanned value)? qrCodeScanned,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QRCodeScanned value)? qrCodeScanned,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements QrScanEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$QRCodeScannedImplCopyWith<$Res> {
  factory _$$QRCodeScannedImplCopyWith(
          _$QRCodeScannedImpl value, $Res Function(_$QRCodeScannedImpl) then) =
      __$$QRCodeScannedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QrCodeData data});

  $QrCodeDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$QRCodeScannedImplCopyWithImpl<$Res>
    extends _$QrScanEventCopyWithImpl<$Res, _$QRCodeScannedImpl>
    implements _$$QRCodeScannedImplCopyWith<$Res> {
  __$$QRCodeScannedImplCopyWithImpl(
      _$QRCodeScannedImpl _value, $Res Function(_$QRCodeScannedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$QRCodeScannedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as QrCodeData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QrCodeDataCopyWith<$Res> get data {
    return $QrCodeDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$QRCodeScannedImpl implements _QRCodeScanned {
  const _$QRCodeScannedImpl(this.data);

  @override
  final QrCodeData data;

  @override
  String toString() {
    return 'QrScanEvent.qrCodeScanned(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QRCodeScannedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QRCodeScannedImplCopyWith<_$QRCodeScannedImpl> get copyWith =>
      __$$QRCodeScannedImplCopyWithImpl<_$QRCodeScannedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(QrCodeData data) qrCodeScanned,
  }) {
    return qrCodeScanned(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(QrCodeData data)? qrCodeScanned,
  }) {
    return qrCodeScanned?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(QrCodeData data)? qrCodeScanned,
    required TResult orElse(),
  }) {
    if (qrCodeScanned != null) {
      return qrCodeScanned(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_QRCodeScanned value) qrCodeScanned,
  }) {
    return qrCodeScanned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_QRCodeScanned value)? qrCodeScanned,
  }) {
    return qrCodeScanned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QRCodeScanned value)? qrCodeScanned,
    required TResult orElse(),
  }) {
    if (qrCodeScanned != null) {
      return qrCodeScanned(this);
    }
    return orElse();
  }
}

abstract class _QRCodeScanned implements QrScanEvent {
  const factory _QRCodeScanned(final QrCodeData data) = _$QRCodeScannedImpl;

  QrCodeData get data;
  @JsonKey(ignore: true)
  _$$QRCodeScannedImplCopyWith<_$QRCodeScannedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QrScanState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QrCodeData data) qrCodeDataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QrCodeData data)? qrCodeDataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QrCodeData data)? qrCodeDataReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_QRCodeDataReceived value) qrCodeDataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_QRCodeDataReceived value)? qrCodeDataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QRCodeDataReceived value)? qrCodeDataReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrScanStateCopyWith<$Res> {
  factory $QrScanStateCopyWith(
          QrScanState value, $Res Function(QrScanState) then) =
      _$QrScanStateCopyWithImpl<$Res, QrScanState>;
}

/// @nodoc
class _$QrScanStateCopyWithImpl<$Res, $Val extends QrScanState>
    implements $QrScanStateCopyWith<$Res> {
  _$QrScanStateCopyWithImpl(this._value, this._then);

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
    extends _$QrScanStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'QrScanState.initial()';
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
    required TResult Function(QrCodeData data) qrCodeDataReceived,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QrCodeData data)? qrCodeDataReceived,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QrCodeData data)? qrCodeDataReceived,
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
    required TResult Function(_QRCodeDataReceived value) qrCodeDataReceived,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_QRCodeDataReceived value)? qrCodeDataReceived,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QRCodeDataReceived value)? qrCodeDataReceived,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QrScanState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$QRCodeDataReceivedImplCopyWith<$Res> {
  factory _$$QRCodeDataReceivedImplCopyWith(_$QRCodeDataReceivedImpl value,
          $Res Function(_$QRCodeDataReceivedImpl) then) =
      __$$QRCodeDataReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QrCodeData data});

  $QrCodeDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$QRCodeDataReceivedImplCopyWithImpl<$Res>
    extends _$QrScanStateCopyWithImpl<$Res, _$QRCodeDataReceivedImpl>
    implements _$$QRCodeDataReceivedImplCopyWith<$Res> {
  __$$QRCodeDataReceivedImplCopyWithImpl(_$QRCodeDataReceivedImpl _value,
      $Res Function(_$QRCodeDataReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$QRCodeDataReceivedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as QrCodeData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QrCodeDataCopyWith<$Res> get data {
    return $QrCodeDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$QRCodeDataReceivedImpl implements _QRCodeDataReceived {
  const _$QRCodeDataReceivedImpl(this.data);

  @override
  final QrCodeData data;

  @override
  String toString() {
    return 'QrScanState.qrCodeDataReceived(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QRCodeDataReceivedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QRCodeDataReceivedImplCopyWith<_$QRCodeDataReceivedImpl> get copyWith =>
      __$$QRCodeDataReceivedImplCopyWithImpl<_$QRCodeDataReceivedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QrCodeData data) qrCodeDataReceived,
  }) {
    return qrCodeDataReceived(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QrCodeData data)? qrCodeDataReceived,
  }) {
    return qrCodeDataReceived?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QrCodeData data)? qrCodeDataReceived,
    required TResult orElse(),
  }) {
    if (qrCodeDataReceived != null) {
      return qrCodeDataReceived(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_QRCodeDataReceived value) qrCodeDataReceived,
  }) {
    return qrCodeDataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_QRCodeDataReceived value)? qrCodeDataReceived,
  }) {
    return qrCodeDataReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QRCodeDataReceived value)? qrCodeDataReceived,
    required TResult orElse(),
  }) {
    if (qrCodeDataReceived != null) {
      return qrCodeDataReceived(this);
    }
    return orElse();
  }
}

abstract class _QRCodeDataReceived implements QrScanState {
  const factory _QRCodeDataReceived(final QrCodeData data) =
      _$QRCodeDataReceivedImpl;

  QrCodeData get data;
  @JsonKey(ignore: true)
  _$$QRCodeDataReceivedImplCopyWith<_$QRCodeDataReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
