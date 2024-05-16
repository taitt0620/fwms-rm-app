// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Request _$RequestFromJson(Map<String, dynamic> json) {
  return _Request.fromJson(json);
}

/// @nodoc
mixin _$Request {
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "relatedInformation")
  String get relatedInformation => throw _privateConstructorUsedError;
  @JsonKey(name: "phase")
  int get phase => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "warehouseId")
  String get warehouseId => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "dateCreate")
  DateTime get dateCreate => throw _privateConstructorUsedError;
  @JsonKey(name: "dateUpdate")
  DateTime get dateUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: "isDeleted")
  bool get isDeleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestCopyWith<Request> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCopyWith<$Res> {
  factory $RequestCopyWith(Request value, $Res Function(Request) then) =
      _$RequestCopyWithImpl<$Res, Request>;
  @useResult
  $Res call(
      {@JsonKey(name: "title") String title,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "relatedInformation") String relatedInformation,
      @JsonKey(name: "phase") int phase,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "warehouseId") String warehouseId,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "dateCreate") DateTime dateCreate,
      @JsonKey(name: "dateUpdate") DateTime dateUpdate,
      @JsonKey(name: "isDeleted") bool isDeleted});
}

/// @nodoc
class _$RequestCopyWithImpl<$Res, $Val extends Request>
    implements $RequestCopyWith<$Res> {
  _$RequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? relatedInformation = null,
    Object? phase = null,
    Object? status = null,
    Object? warehouseId = null,
    Object? id = null,
    Object? dateCreate = null,
    Object? dateUpdate = null,
    Object? isDeleted = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      relatedInformation: null == relatedInformation
          ? _value.relatedInformation
          : relatedInformation // ignore: cast_nullable_to_non_nullable
              as String,
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      warehouseId: null == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreate: null == dateCreate
          ? _value.dateCreate
          : dateCreate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateUpdate: null == dateUpdate
          ? _value.dateUpdate
          : dateUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestImplCopyWith<$Res> implements $RequestCopyWith<$Res> {
  factory _$$RequestImplCopyWith(
          _$RequestImpl value, $Res Function(_$RequestImpl) then) =
      __$$RequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "title") String title,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "relatedInformation") String relatedInformation,
      @JsonKey(name: "phase") int phase,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "warehouseId") String warehouseId,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "dateCreate") DateTime dateCreate,
      @JsonKey(name: "dateUpdate") DateTime dateUpdate,
      @JsonKey(name: "isDeleted") bool isDeleted});
}

/// @nodoc
class __$$RequestImplCopyWithImpl<$Res>
    extends _$RequestCopyWithImpl<$Res, _$RequestImpl>
    implements _$$RequestImplCopyWith<$Res> {
  __$$RequestImplCopyWithImpl(
      _$RequestImpl _value, $Res Function(_$RequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? relatedInformation = null,
    Object? phase = null,
    Object? status = null,
    Object? warehouseId = null,
    Object? id = null,
    Object? dateCreate = null,
    Object? dateUpdate = null,
    Object? isDeleted = null,
  }) {
    return _then(_$RequestImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      relatedInformation: null == relatedInformation
          ? _value.relatedInformation
          : relatedInformation // ignore: cast_nullable_to_non_nullable
              as String,
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      warehouseId: null == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreate: null == dateCreate
          ? _value.dateCreate
          : dateCreate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateUpdate: null == dateUpdate
          ? _value.dateUpdate
          : dateUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestImpl implements _Request {
  const _$RequestImpl(
      {@JsonKey(name: "title") required this.title,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "relatedInformation") required this.relatedInformation,
      @JsonKey(name: "phase") required this.phase,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "warehouseId") required this.warehouseId,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "dateCreate") required this.dateCreate,
      @JsonKey(name: "dateUpdate") required this.dateUpdate,
      @JsonKey(name: "isDeleted") required this.isDeleted});

  factory _$RequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestImplFromJson(json);

  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "relatedInformation")
  final String relatedInformation;
  @override
  @JsonKey(name: "phase")
  final int phase;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "warehouseId")
  final String warehouseId;
  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "dateCreate")
  final DateTime dateCreate;
  @override
  @JsonKey(name: "dateUpdate")
  final DateTime dateUpdate;
  @override
  @JsonKey(name: "isDeleted")
  final bool isDeleted;

  @override
  String toString() {
    return 'Request(title: $title, description: $description, relatedInformation: $relatedInformation, phase: $phase, status: $status, warehouseId: $warehouseId, id: $id, dateCreate: $dateCreate, dateUpdate: $dateUpdate, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.relatedInformation, relatedInformation) ||
                other.relatedInformation == relatedInformation) &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.warehouseId, warehouseId) ||
                other.warehouseId == warehouseId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateCreate, dateCreate) ||
                other.dateCreate == dateCreate) &&
            (identical(other.dateUpdate, dateUpdate) ||
                other.dateUpdate == dateUpdate) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      relatedInformation,
      phase,
      status,
      warehouseId,
      id,
      dateCreate,
      dateUpdate,
      isDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestImplCopyWith<_$RequestImpl> get copyWith =>
      __$$RequestImplCopyWithImpl<_$RequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestImplToJson(
      this,
    );
  }
}

abstract class _Request implements Request {
  const factory _Request(
          {@JsonKey(name: "title") required final String title,
          @JsonKey(name: "description") required final String description,
          @JsonKey(name: "relatedInformation")
          required final String relatedInformation,
          @JsonKey(name: "phase") required final int phase,
          @JsonKey(name: "status") required final String status,
          @JsonKey(name: "warehouseId") required final String warehouseId,
          @JsonKey(name: "id") required final String id,
          @JsonKey(name: "dateCreate") required final DateTime dateCreate,
          @JsonKey(name: "dateUpdate") required final DateTime dateUpdate,
          @JsonKey(name: "isDeleted") required final bool isDeleted}) =
      _$RequestImpl;

  factory _Request.fromJson(Map<String, dynamic> json) = _$RequestImpl.fromJson;

  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "relatedInformation")
  String get relatedInformation;
  @override
  @JsonKey(name: "phase")
  int get phase;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "warehouseId")
  String get warehouseId;
  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "dateCreate")
  DateTime get dateCreate;
  @override
  @JsonKey(name: "dateUpdate")
  DateTime get dateUpdate;
  @override
  @JsonKey(name: "isDeleted")
  bool get isDeleted;
  @override
  @JsonKey(ignore: true)
  _$$RequestImplCopyWith<_$RequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
