// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_good_receipt_note_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateGoodReceiptNoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String poCode, int phase) createGoodReceiptNote,
    required TResult Function(QrCodeData qrCodeData) addGoodReceiptNoteDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String poCode, int phase)? createGoodReceiptNote,
    TResult? Function(QrCodeData qrCodeData)? addGoodReceiptNoteDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String poCode, int phase)? createGoodReceiptNote,
    TResult Function(QrCodeData qrCodeData)? addGoodReceiptNoteDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateGoodReceiptNote value)
        createGoodReceiptNote,
    required TResult Function(_AddGoodReceiptNoteDetail value)
        addGoodReceiptNoteDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateGoodReceiptNote value)? createGoodReceiptNote,
    TResult? Function(_AddGoodReceiptNoteDetail value)?
        addGoodReceiptNoteDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateGoodReceiptNote value)? createGoodReceiptNote,
    TResult Function(_AddGoodReceiptNoteDetail value)? addGoodReceiptNoteDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGoodReceiptNoteEventCopyWith<$Res> {
  factory $CreateGoodReceiptNoteEventCopyWith(CreateGoodReceiptNoteEvent value,
          $Res Function(CreateGoodReceiptNoteEvent) then) =
      _$CreateGoodReceiptNoteEventCopyWithImpl<$Res,
          CreateGoodReceiptNoteEvent>;
}

/// @nodoc
class _$CreateGoodReceiptNoteEventCopyWithImpl<$Res,
        $Val extends CreateGoodReceiptNoteEvent>
    implements $CreateGoodReceiptNoteEventCopyWith<$Res> {
  _$CreateGoodReceiptNoteEventCopyWithImpl(this._value, this._then);

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
    extends _$CreateGoodReceiptNoteEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'CreateGoodReceiptNoteEvent.started()';
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
    required TResult Function(String poCode, int phase) createGoodReceiptNote,
    required TResult Function(QrCodeData qrCodeData) addGoodReceiptNoteDetail,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String poCode, int phase)? createGoodReceiptNote,
    TResult? Function(QrCodeData qrCodeData)? addGoodReceiptNoteDetail,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String poCode, int phase)? createGoodReceiptNote,
    TResult Function(QrCodeData qrCodeData)? addGoodReceiptNoteDetail,
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
    required TResult Function(_CreateGoodReceiptNote value)
        createGoodReceiptNote,
    required TResult Function(_AddGoodReceiptNoteDetail value)
        addGoodReceiptNoteDetail,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateGoodReceiptNote value)? createGoodReceiptNote,
    TResult? Function(_AddGoodReceiptNoteDetail value)?
        addGoodReceiptNoteDetail,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateGoodReceiptNote value)? createGoodReceiptNote,
    TResult Function(_AddGoodReceiptNoteDetail value)? addGoodReceiptNoteDetail,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreateGoodReceiptNoteEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CreateGoodReceiptNoteImplCopyWith<$Res> {
  factory _$$CreateGoodReceiptNoteImplCopyWith(
          _$CreateGoodReceiptNoteImpl value,
          $Res Function(_$CreateGoodReceiptNoteImpl) then) =
      __$$CreateGoodReceiptNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String poCode, int phase});
}

/// @nodoc
class __$$CreateGoodReceiptNoteImplCopyWithImpl<$Res>
    extends _$CreateGoodReceiptNoteEventCopyWithImpl<$Res,
        _$CreateGoodReceiptNoteImpl>
    implements _$$CreateGoodReceiptNoteImplCopyWith<$Res> {
  __$$CreateGoodReceiptNoteImplCopyWithImpl(_$CreateGoodReceiptNoteImpl _value,
      $Res Function(_$CreateGoodReceiptNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poCode = null,
    Object? phase = null,
  }) {
    return _then(_$CreateGoodReceiptNoteImpl(
      poCode: null == poCode
          ? _value.poCode
          : poCode // ignore: cast_nullable_to_non_nullable
              as String,
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateGoodReceiptNoteImpl implements _CreateGoodReceiptNote {
  const _$CreateGoodReceiptNoteImpl(
      {required this.poCode, required this.phase});

  @override
  final String poCode;
  @override
  final int phase;

  @override
  String toString() {
    return 'CreateGoodReceiptNoteEvent.createGoodReceiptNote(poCode: $poCode, phase: $phase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGoodReceiptNoteImpl &&
            (identical(other.poCode, poCode) || other.poCode == poCode) &&
            (identical(other.phase, phase) || other.phase == phase));
  }

  @override
  int get hashCode => Object.hash(runtimeType, poCode, phase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGoodReceiptNoteImplCopyWith<_$CreateGoodReceiptNoteImpl>
      get copyWith => __$$CreateGoodReceiptNoteImplCopyWithImpl<
          _$CreateGoodReceiptNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String poCode, int phase) createGoodReceiptNote,
    required TResult Function(QrCodeData qrCodeData) addGoodReceiptNoteDetail,
  }) {
    return createGoodReceiptNote(poCode, phase);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String poCode, int phase)? createGoodReceiptNote,
    TResult? Function(QrCodeData qrCodeData)? addGoodReceiptNoteDetail,
  }) {
    return createGoodReceiptNote?.call(poCode, phase);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String poCode, int phase)? createGoodReceiptNote,
    TResult Function(QrCodeData qrCodeData)? addGoodReceiptNoteDetail,
    required TResult orElse(),
  }) {
    if (createGoodReceiptNote != null) {
      return createGoodReceiptNote(poCode, phase);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateGoodReceiptNote value)
        createGoodReceiptNote,
    required TResult Function(_AddGoodReceiptNoteDetail value)
        addGoodReceiptNoteDetail,
  }) {
    return createGoodReceiptNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateGoodReceiptNote value)? createGoodReceiptNote,
    TResult? Function(_AddGoodReceiptNoteDetail value)?
        addGoodReceiptNoteDetail,
  }) {
    return createGoodReceiptNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateGoodReceiptNote value)? createGoodReceiptNote,
    TResult Function(_AddGoodReceiptNoteDetail value)? addGoodReceiptNoteDetail,
    required TResult orElse(),
  }) {
    if (createGoodReceiptNote != null) {
      return createGoodReceiptNote(this);
    }
    return orElse();
  }
}

abstract class _CreateGoodReceiptNote implements CreateGoodReceiptNoteEvent {
  const factory _CreateGoodReceiptNote(
      {required final String poCode,
      required final int phase}) = _$CreateGoodReceiptNoteImpl;

  String get poCode;
  int get phase;
  @JsonKey(ignore: true)
  _$$CreateGoodReceiptNoteImplCopyWith<_$CreateGoodReceiptNoteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddGoodReceiptNoteDetailImplCopyWith<$Res> {
  factory _$$AddGoodReceiptNoteDetailImplCopyWith(
          _$AddGoodReceiptNoteDetailImpl value,
          $Res Function(_$AddGoodReceiptNoteDetailImpl) then) =
      __$$AddGoodReceiptNoteDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QrCodeData qrCodeData});

  $QrCodeDataCopyWith<$Res> get qrCodeData;
}

/// @nodoc
class __$$AddGoodReceiptNoteDetailImplCopyWithImpl<$Res>
    extends _$CreateGoodReceiptNoteEventCopyWithImpl<$Res,
        _$AddGoodReceiptNoteDetailImpl>
    implements _$$AddGoodReceiptNoteDetailImplCopyWith<$Res> {
  __$$AddGoodReceiptNoteDetailImplCopyWithImpl(
      _$AddGoodReceiptNoteDetailImpl _value,
      $Res Function(_$AddGoodReceiptNoteDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrCodeData = null,
  }) {
    return _then(_$AddGoodReceiptNoteDetailImpl(
      qrCodeData: null == qrCodeData
          ? _value.qrCodeData
          : qrCodeData // ignore: cast_nullable_to_non_nullable
              as QrCodeData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QrCodeDataCopyWith<$Res> get qrCodeData {
    return $QrCodeDataCopyWith<$Res>(_value.qrCodeData, (value) {
      return _then(_value.copyWith(qrCodeData: value));
    });
  }
}

/// @nodoc

class _$AddGoodReceiptNoteDetailImpl implements _AddGoodReceiptNoteDetail {
  const _$AddGoodReceiptNoteDetailImpl({required this.qrCodeData});

  @override
  final QrCodeData qrCodeData;

  @override
  String toString() {
    return 'CreateGoodReceiptNoteEvent.addGoodReceiptNoteDetail(qrCodeData: $qrCodeData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGoodReceiptNoteDetailImpl &&
            (identical(other.qrCodeData, qrCodeData) ||
                other.qrCodeData == qrCodeData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, qrCodeData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGoodReceiptNoteDetailImplCopyWith<_$AddGoodReceiptNoteDetailImpl>
      get copyWith => __$$AddGoodReceiptNoteDetailImplCopyWithImpl<
          _$AddGoodReceiptNoteDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String poCode, int phase) createGoodReceiptNote,
    required TResult Function(QrCodeData qrCodeData) addGoodReceiptNoteDetail,
  }) {
    return addGoodReceiptNoteDetail(qrCodeData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String poCode, int phase)? createGoodReceiptNote,
    TResult? Function(QrCodeData qrCodeData)? addGoodReceiptNoteDetail,
  }) {
    return addGoodReceiptNoteDetail?.call(qrCodeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String poCode, int phase)? createGoodReceiptNote,
    TResult Function(QrCodeData qrCodeData)? addGoodReceiptNoteDetail,
    required TResult orElse(),
  }) {
    if (addGoodReceiptNoteDetail != null) {
      return addGoodReceiptNoteDetail(qrCodeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateGoodReceiptNote value)
        createGoodReceiptNote,
    required TResult Function(_AddGoodReceiptNoteDetail value)
        addGoodReceiptNoteDetail,
  }) {
    return addGoodReceiptNoteDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateGoodReceiptNote value)? createGoodReceiptNote,
    TResult? Function(_AddGoodReceiptNoteDetail value)?
        addGoodReceiptNoteDetail,
  }) {
    return addGoodReceiptNoteDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateGoodReceiptNote value)? createGoodReceiptNote,
    TResult Function(_AddGoodReceiptNoteDetail value)? addGoodReceiptNoteDetail,
    required TResult orElse(),
  }) {
    if (addGoodReceiptNoteDetail != null) {
      return addGoodReceiptNoteDetail(this);
    }
    return orElse();
  }
}

abstract class _AddGoodReceiptNoteDetail implements CreateGoodReceiptNoteEvent {
  const factory _AddGoodReceiptNoteDetail(
      {required final QrCodeData qrCodeData}) = _$AddGoodReceiptNoteDetailImpl;

  QrCodeData get qrCodeData;
  @JsonKey(ignore: true)
  _$$AddGoodReceiptNoteDetailImplCopyWith<_$AddGoodReceiptNoteDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateGoodReceiptNoteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(CreateGoodReceiptNote goodReceipt) success,
    required TResult Function(String message) failure,
    required TResult Function() updateNoteInProgress,
    required TResult Function(CreateGoodReceiptNote goodReceipt)
        updateNoteSuccess,
    required TResult Function(String message) updateNoteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(CreateGoodReceiptNote goodReceipt)? success,
    TResult? Function(String message)? failure,
    TResult? Function()? updateNoteInProgress,
    TResult? Function(CreateGoodReceiptNote goodReceipt)? updateNoteSuccess,
    TResult? Function(String message)? updateNoteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(CreateGoodReceiptNote goodReceipt)? success,
    TResult Function(String message)? failure,
    TResult Function()? updateNoteInProgress,
    TResult Function(CreateGoodReceiptNote goodReceipt)? updateNoteSuccess,
    TResult Function(String message)? updateNoteFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_UpdateNoteInProgress value) updateNoteInProgress,
    required TResult Function(_UpdateNoteSuccess value) updateNoteSuccess,
    required TResult Function(_UpdateNoteFailure value) updateNoteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_UpdateNoteInProgress value)? updateNoteInProgress,
    TResult? Function(_UpdateNoteSuccess value)? updateNoteSuccess,
    TResult? Function(_UpdateNoteFailure value)? updateNoteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_UpdateNoteInProgress value)? updateNoteInProgress,
    TResult Function(_UpdateNoteSuccess value)? updateNoteSuccess,
    TResult Function(_UpdateNoteFailure value)? updateNoteFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGoodReceiptNoteStateCopyWith<$Res> {
  factory $CreateGoodReceiptNoteStateCopyWith(CreateGoodReceiptNoteState value,
          $Res Function(CreateGoodReceiptNoteState) then) =
      _$CreateGoodReceiptNoteStateCopyWithImpl<$Res,
          CreateGoodReceiptNoteState>;
}

/// @nodoc
class _$CreateGoodReceiptNoteStateCopyWithImpl<$Res,
        $Val extends CreateGoodReceiptNoteState>
    implements $CreateGoodReceiptNoteStateCopyWith<$Res> {
  _$CreateGoodReceiptNoteStateCopyWithImpl(this._value, this._then);

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
    extends _$CreateGoodReceiptNoteStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CreateGoodReceiptNoteState.initial()';
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
    required TResult Function() inProgress,
    required TResult Function(CreateGoodReceiptNote goodReceipt) success,
    required TResult Function(String message) failure,
    required TResult Function() updateNoteInProgress,
    required TResult Function(CreateGoodReceiptNote goodReceipt)
        updateNoteSuccess,
    required TResult Function(String message) updateNoteFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(CreateGoodReceiptNote goodReceipt)? success,
    TResult? Function(String message)? failure,
    TResult? Function()? updateNoteInProgress,
    TResult? Function(CreateGoodReceiptNote goodReceipt)? updateNoteSuccess,
    TResult? Function(String message)? updateNoteFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(CreateGoodReceiptNote goodReceipt)? success,
    TResult Function(String message)? failure,
    TResult Function()? updateNoteInProgress,
    TResult Function(CreateGoodReceiptNote goodReceipt)? updateNoteSuccess,
    TResult Function(String message)? updateNoteFailure,
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
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_UpdateNoteInProgress value) updateNoteInProgress,
    required TResult Function(_UpdateNoteSuccess value) updateNoteSuccess,
    required TResult Function(_UpdateNoteFailure value) updateNoteFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_UpdateNoteInProgress value)? updateNoteInProgress,
    TResult? Function(_UpdateNoteSuccess value)? updateNoteSuccess,
    TResult? Function(_UpdateNoteFailure value)? updateNoteFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_UpdateNoteInProgress value)? updateNoteInProgress,
    TResult Function(_UpdateNoteSuccess value)? updateNoteSuccess,
    TResult Function(_UpdateNoteFailure value)? updateNoteFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateGoodReceiptNoteState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$InProgressImplCopyWith<$Res> {
  factory _$$InProgressImplCopyWith(
          _$InProgressImpl value, $Res Function(_$InProgressImpl) then) =
      __$$InProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<$Res>
    extends _$CreateGoodReceiptNoteStateCopyWithImpl<$Res, _$InProgressImpl>
    implements _$$InProgressImplCopyWith<$Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl _value, $Res Function(_$InProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InProgressImpl implements _InProgress {
  const _$InProgressImpl();

  @override
  String toString() {
    return 'CreateGoodReceiptNoteState.inProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(CreateGoodReceiptNote goodReceipt) success,
    required TResult Function(String message) failure,
    required TResult Function() updateNoteInProgress,
    required TResult Function(CreateGoodReceiptNote goodReceipt)
        updateNoteSuccess,
    required TResult Function(String message) updateNoteFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(CreateGoodReceiptNote goodReceipt)? success,
    TResult? Function(String message)? failure,
    TResult? Function()? updateNoteInProgress,
    TResult? Function(CreateGoodReceiptNote goodReceipt)? updateNoteSuccess,
    TResult? Function(String message)? updateNoteFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(CreateGoodReceiptNote goodReceipt)? success,
    TResult Function(String message)? failure,
    TResult Function()? updateNoteInProgress,
    TResult Function(CreateGoodReceiptNote goodReceipt)? updateNoteSuccess,
    TResult Function(String message)? updateNoteFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_UpdateNoteInProgress value) updateNoteInProgress,
    required TResult Function(_UpdateNoteSuccess value) updateNoteSuccess,
    required TResult Function(_UpdateNoteFailure value) updateNoteFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_UpdateNoteInProgress value)? updateNoteInProgress,
    TResult? Function(_UpdateNoteSuccess value)? updateNoteSuccess,
    TResult? Function(_UpdateNoteFailure value)? updateNoteFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_UpdateNoteInProgress value)? updateNoteInProgress,
    TResult Function(_UpdateNoteSuccess value)? updateNoteSuccess,
    TResult Function(_UpdateNoteFailure value)? updateNoteFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements CreateGoodReceiptNoteState {
  const factory _InProgress() = _$InProgressImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateGoodReceiptNote goodReceipt});

  $CreateGoodReceiptNoteCopyWith<$Res> get goodReceipt;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CreateGoodReceiptNoteStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goodReceipt = null,
  }) {
    return _then(_$SuccessImpl(
      null == goodReceipt
          ? _value.goodReceipt
          : goodReceipt // ignore: cast_nullable_to_non_nullable
              as CreateGoodReceiptNote,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateGoodReceiptNoteCopyWith<$Res> get goodReceipt {
    return $CreateGoodReceiptNoteCopyWith<$Res>(_value.goodReceipt, (value) {
      return _then(_value.copyWith(goodReceipt: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.goodReceipt);

  @override
  final CreateGoodReceiptNote goodReceipt;

  @override
  String toString() {
    return 'CreateGoodReceiptNoteState.success(goodReceipt: $goodReceipt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.goodReceipt, goodReceipt) ||
                other.goodReceipt == goodReceipt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, goodReceipt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(CreateGoodReceiptNote goodReceipt) success,
    required TResult Function(String message) failure,
    required TResult Function() updateNoteInProgress,
    required TResult Function(CreateGoodReceiptNote goodReceipt)
        updateNoteSuccess,
    required TResult Function(String message) updateNoteFailure,
  }) {
    return success(goodReceipt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(CreateGoodReceiptNote goodReceipt)? success,
    TResult? Function(String message)? failure,
    TResult? Function()? updateNoteInProgress,
    TResult? Function(CreateGoodReceiptNote goodReceipt)? updateNoteSuccess,
    TResult? Function(String message)? updateNoteFailure,
  }) {
    return success?.call(goodReceipt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(CreateGoodReceiptNote goodReceipt)? success,
    TResult Function(String message)? failure,
    TResult Function()? updateNoteInProgress,
    TResult Function(CreateGoodReceiptNote goodReceipt)? updateNoteSuccess,
    TResult Function(String message)? updateNoteFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(goodReceipt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_UpdateNoteInProgress value) updateNoteInProgress,
    required TResult Function(_UpdateNoteSuccess value) updateNoteSuccess,
    required TResult Function(_UpdateNoteFailure value) updateNoteFailure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_UpdateNoteInProgress value)? updateNoteInProgress,
    TResult? Function(_UpdateNoteSuccess value)? updateNoteSuccess,
    TResult? Function(_UpdateNoteFailure value)? updateNoteFailure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_UpdateNoteInProgress value)? updateNoteInProgress,
    TResult Function(_UpdateNoteSuccess value)? updateNoteSuccess,
    TResult Function(_UpdateNoteFailure value)? updateNoteFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CreateGoodReceiptNoteState {
  const factory _Success(final CreateGoodReceiptNote goodReceipt) =
      _$SuccessImpl;

  CreateGoodReceiptNote get goodReceipt;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$CreateGoodReceiptNoteStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CreateGoodReceiptNoteState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(CreateGoodReceiptNote goodReceipt) success,
    required TResult Function(String message) failure,
    required TResult Function() updateNoteInProgress,
    required TResult Function(CreateGoodReceiptNote goodReceipt)
        updateNoteSuccess,
    required TResult Function(String message) updateNoteFailure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(CreateGoodReceiptNote goodReceipt)? success,
    TResult? Function(String message)? failure,
    TResult? Function()? updateNoteInProgress,
    TResult? Function(CreateGoodReceiptNote goodReceipt)? updateNoteSuccess,
    TResult? Function(String message)? updateNoteFailure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(CreateGoodReceiptNote goodReceipt)? success,
    TResult Function(String message)? failure,
    TResult Function()? updateNoteInProgress,
    TResult Function(CreateGoodReceiptNote goodReceipt)? updateNoteSuccess,
    TResult Function(String message)? updateNoteFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_UpdateNoteInProgress value) updateNoteInProgress,
    required TResult Function(_UpdateNoteSuccess value) updateNoteSuccess,
    required TResult Function(_UpdateNoteFailure value) updateNoteFailure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_UpdateNoteInProgress value)? updateNoteInProgress,
    TResult? Function(_UpdateNoteSuccess value)? updateNoteSuccess,
    TResult? Function(_UpdateNoteFailure value)? updateNoteFailure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_UpdateNoteInProgress value)? updateNoteInProgress,
    TResult Function(_UpdateNoteSuccess value)? updateNoteSuccess,
    TResult Function(_UpdateNoteFailure value)? updateNoteFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements CreateGoodReceiptNoteState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateNoteInProgressImplCopyWith<$Res> {
  factory _$$UpdateNoteInProgressImplCopyWith(_$UpdateNoteInProgressImpl value,
          $Res Function(_$UpdateNoteInProgressImpl) then) =
      __$$UpdateNoteInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateNoteInProgressImplCopyWithImpl<$Res>
    extends _$CreateGoodReceiptNoteStateCopyWithImpl<$Res,
        _$UpdateNoteInProgressImpl>
    implements _$$UpdateNoteInProgressImplCopyWith<$Res> {
  __$$UpdateNoteInProgressImplCopyWithImpl(_$UpdateNoteInProgressImpl _value,
      $Res Function(_$UpdateNoteInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateNoteInProgressImpl implements _UpdateNoteInProgress {
  const _$UpdateNoteInProgressImpl();

  @override
  String toString() {
    return 'CreateGoodReceiptNoteState.updateNoteInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNoteInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(CreateGoodReceiptNote goodReceipt) success,
    required TResult Function(String message) failure,
    required TResult Function() updateNoteInProgress,
    required TResult Function(CreateGoodReceiptNote goodReceipt)
        updateNoteSuccess,
    required TResult Function(String message) updateNoteFailure,
  }) {
    return updateNoteInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(CreateGoodReceiptNote goodReceipt)? success,
    TResult? Function(String message)? failure,
    TResult? Function()? updateNoteInProgress,
    TResult? Function(CreateGoodReceiptNote goodReceipt)? updateNoteSuccess,
    TResult? Function(String message)? updateNoteFailure,
  }) {
    return updateNoteInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(CreateGoodReceiptNote goodReceipt)? success,
    TResult Function(String message)? failure,
    TResult Function()? updateNoteInProgress,
    TResult Function(CreateGoodReceiptNote goodReceipt)? updateNoteSuccess,
    TResult Function(String message)? updateNoteFailure,
    required TResult orElse(),
  }) {
    if (updateNoteInProgress != null) {
      return updateNoteInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_UpdateNoteInProgress value) updateNoteInProgress,
    required TResult Function(_UpdateNoteSuccess value) updateNoteSuccess,
    required TResult Function(_UpdateNoteFailure value) updateNoteFailure,
  }) {
    return updateNoteInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_UpdateNoteInProgress value)? updateNoteInProgress,
    TResult? Function(_UpdateNoteSuccess value)? updateNoteSuccess,
    TResult? Function(_UpdateNoteFailure value)? updateNoteFailure,
  }) {
    return updateNoteInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_UpdateNoteInProgress value)? updateNoteInProgress,
    TResult Function(_UpdateNoteSuccess value)? updateNoteSuccess,
    TResult Function(_UpdateNoteFailure value)? updateNoteFailure,
    required TResult orElse(),
  }) {
    if (updateNoteInProgress != null) {
      return updateNoteInProgress(this);
    }
    return orElse();
  }
}

abstract class _UpdateNoteInProgress implements CreateGoodReceiptNoteState {
  const factory _UpdateNoteInProgress() = _$UpdateNoteInProgressImpl;
}

/// @nodoc
abstract class _$$UpdateNoteSuccessImplCopyWith<$Res> {
  factory _$$UpdateNoteSuccessImplCopyWith(_$UpdateNoteSuccessImpl value,
          $Res Function(_$UpdateNoteSuccessImpl) then) =
      __$$UpdateNoteSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateGoodReceiptNote goodReceipt});

  $CreateGoodReceiptNoteCopyWith<$Res> get goodReceipt;
}

/// @nodoc
class __$$UpdateNoteSuccessImplCopyWithImpl<$Res>
    extends _$CreateGoodReceiptNoteStateCopyWithImpl<$Res,
        _$UpdateNoteSuccessImpl>
    implements _$$UpdateNoteSuccessImplCopyWith<$Res> {
  __$$UpdateNoteSuccessImplCopyWithImpl(_$UpdateNoteSuccessImpl _value,
      $Res Function(_$UpdateNoteSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goodReceipt = null,
  }) {
    return _then(_$UpdateNoteSuccessImpl(
      null == goodReceipt
          ? _value.goodReceipt
          : goodReceipt // ignore: cast_nullable_to_non_nullable
              as CreateGoodReceiptNote,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateGoodReceiptNoteCopyWith<$Res> get goodReceipt {
    return $CreateGoodReceiptNoteCopyWith<$Res>(_value.goodReceipt, (value) {
      return _then(_value.copyWith(goodReceipt: value));
    });
  }
}

/// @nodoc

class _$UpdateNoteSuccessImpl implements _UpdateNoteSuccess {
  const _$UpdateNoteSuccessImpl(this.goodReceipt);

  @override
  final CreateGoodReceiptNote goodReceipt;

  @override
  String toString() {
    return 'CreateGoodReceiptNoteState.updateNoteSuccess(goodReceipt: $goodReceipt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNoteSuccessImpl &&
            (identical(other.goodReceipt, goodReceipt) ||
                other.goodReceipt == goodReceipt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, goodReceipt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNoteSuccessImplCopyWith<_$UpdateNoteSuccessImpl> get copyWith =>
      __$$UpdateNoteSuccessImplCopyWithImpl<_$UpdateNoteSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(CreateGoodReceiptNote goodReceipt) success,
    required TResult Function(String message) failure,
    required TResult Function() updateNoteInProgress,
    required TResult Function(CreateGoodReceiptNote goodReceipt)
        updateNoteSuccess,
    required TResult Function(String message) updateNoteFailure,
  }) {
    return updateNoteSuccess(goodReceipt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(CreateGoodReceiptNote goodReceipt)? success,
    TResult? Function(String message)? failure,
    TResult? Function()? updateNoteInProgress,
    TResult? Function(CreateGoodReceiptNote goodReceipt)? updateNoteSuccess,
    TResult? Function(String message)? updateNoteFailure,
  }) {
    return updateNoteSuccess?.call(goodReceipt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(CreateGoodReceiptNote goodReceipt)? success,
    TResult Function(String message)? failure,
    TResult Function()? updateNoteInProgress,
    TResult Function(CreateGoodReceiptNote goodReceipt)? updateNoteSuccess,
    TResult Function(String message)? updateNoteFailure,
    required TResult orElse(),
  }) {
    if (updateNoteSuccess != null) {
      return updateNoteSuccess(goodReceipt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_UpdateNoteInProgress value) updateNoteInProgress,
    required TResult Function(_UpdateNoteSuccess value) updateNoteSuccess,
    required TResult Function(_UpdateNoteFailure value) updateNoteFailure,
  }) {
    return updateNoteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_UpdateNoteInProgress value)? updateNoteInProgress,
    TResult? Function(_UpdateNoteSuccess value)? updateNoteSuccess,
    TResult? Function(_UpdateNoteFailure value)? updateNoteFailure,
  }) {
    return updateNoteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_UpdateNoteInProgress value)? updateNoteInProgress,
    TResult Function(_UpdateNoteSuccess value)? updateNoteSuccess,
    TResult Function(_UpdateNoteFailure value)? updateNoteFailure,
    required TResult orElse(),
  }) {
    if (updateNoteSuccess != null) {
      return updateNoteSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateNoteSuccess implements CreateGoodReceiptNoteState {
  const factory _UpdateNoteSuccess(final CreateGoodReceiptNote goodReceipt) =
      _$UpdateNoteSuccessImpl;

  CreateGoodReceiptNote get goodReceipt;
  @JsonKey(ignore: true)
  _$$UpdateNoteSuccessImplCopyWith<_$UpdateNoteSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateNoteFailureImplCopyWith<$Res> {
  factory _$$UpdateNoteFailureImplCopyWith(_$UpdateNoteFailureImpl value,
          $Res Function(_$UpdateNoteFailureImpl) then) =
      __$$UpdateNoteFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UpdateNoteFailureImplCopyWithImpl<$Res>
    extends _$CreateGoodReceiptNoteStateCopyWithImpl<$Res,
        _$UpdateNoteFailureImpl>
    implements _$$UpdateNoteFailureImplCopyWith<$Res> {
  __$$UpdateNoteFailureImplCopyWithImpl(_$UpdateNoteFailureImpl _value,
      $Res Function(_$UpdateNoteFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UpdateNoteFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateNoteFailureImpl implements _UpdateNoteFailure {
  const _$UpdateNoteFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CreateGoodReceiptNoteState.updateNoteFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNoteFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNoteFailureImplCopyWith<_$UpdateNoteFailureImpl> get copyWith =>
      __$$UpdateNoteFailureImplCopyWithImpl<_$UpdateNoteFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(CreateGoodReceiptNote goodReceipt) success,
    required TResult Function(String message) failure,
    required TResult Function() updateNoteInProgress,
    required TResult Function(CreateGoodReceiptNote goodReceipt)
        updateNoteSuccess,
    required TResult Function(String message) updateNoteFailure,
  }) {
    return updateNoteFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(CreateGoodReceiptNote goodReceipt)? success,
    TResult? Function(String message)? failure,
    TResult? Function()? updateNoteInProgress,
    TResult? Function(CreateGoodReceiptNote goodReceipt)? updateNoteSuccess,
    TResult? Function(String message)? updateNoteFailure,
  }) {
    return updateNoteFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(CreateGoodReceiptNote goodReceipt)? success,
    TResult Function(String message)? failure,
    TResult Function()? updateNoteInProgress,
    TResult Function(CreateGoodReceiptNote goodReceipt)? updateNoteSuccess,
    TResult Function(String message)? updateNoteFailure,
    required TResult orElse(),
  }) {
    if (updateNoteFailure != null) {
      return updateNoteFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_UpdateNoteInProgress value) updateNoteInProgress,
    required TResult Function(_UpdateNoteSuccess value) updateNoteSuccess,
    required TResult Function(_UpdateNoteFailure value) updateNoteFailure,
  }) {
    return updateNoteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_UpdateNoteInProgress value)? updateNoteInProgress,
    TResult? Function(_UpdateNoteSuccess value)? updateNoteSuccess,
    TResult? Function(_UpdateNoteFailure value)? updateNoteFailure,
  }) {
    return updateNoteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_UpdateNoteInProgress value)? updateNoteInProgress,
    TResult Function(_UpdateNoteSuccess value)? updateNoteSuccess,
    TResult Function(_UpdateNoteFailure value)? updateNoteFailure,
    required TResult orElse(),
  }) {
    if (updateNoteFailure != null) {
      return updateNoteFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateNoteFailure implements CreateGoodReceiptNoteState {
  const factory _UpdateNoteFailure(final String message) =
      _$UpdateNoteFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$UpdateNoteFailureImplCopyWith<_$UpdateNoteFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
