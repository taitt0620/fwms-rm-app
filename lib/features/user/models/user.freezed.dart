// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "userName")
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "gender")
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "roleId")
  String? get roleId => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "dateCreate")
  DateTime? get dateCreate => throw _privateConstructorUsedError;
  @JsonKey(name: "dateUpdate")
  DateTime? get dateUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: "isDeleted")
  bool? get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "gender") String? gender,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "roleId") String? roleId,
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "dateCreate") DateTime? dateCreate,
      @JsonKey(name: "dateUpdate") DateTime? dateUpdate,
      @JsonKey(name: "isDeleted") bool? isDeleted,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "avatar") String? avatar});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? userName = freezed,
    Object? gender = freezed,
    Object? status = freezed,
    Object? roleId = freezed,
    Object? id = freezed,
    Object? dateCreate = freezed,
    Object? dateUpdate = freezed,
    Object? isDeleted = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreate: freezed == dateCreate
          ? _value.dateCreate
          : dateCreate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateUpdate: freezed == dateUpdate
          ? _value.dateUpdate
          : dateUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "gender") String? gender,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "roleId") String? roleId,
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "dateCreate") DateTime? dateCreate,
      @JsonKey(name: "dateUpdate") DateTime? dateUpdate,
      @JsonKey(name: "isDeleted") bool? isDeleted,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "avatar") String? avatar});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? userName = freezed,
    Object? gender = freezed,
    Object? status = freezed,
    Object? roleId = freezed,
    Object? id = freezed,
    Object? dateCreate = freezed,
    Object? dateUpdate = freezed,
    Object? isDeleted = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$UserImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreate: freezed == dateCreate
          ? _value.dateCreate
          : dateCreate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateUpdate: freezed == dateUpdate
          ? _value.dateUpdate
          : dateUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "userName") this.userName,
      @JsonKey(name: "gender") this.gender,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "roleId") this.roleId,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "dateCreate") this.dateCreate,
      @JsonKey(name: "dateUpdate") this.dateUpdate,
      @JsonKey(name: "isDeleted") this.isDeleted,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "address") this.address,
      @JsonKey(name: "avatar") this.avatar});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "userName")
  final String? userName;
  @override
  @JsonKey(name: "gender")
  final String? gender;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "roleId")
  final String? roleId;
  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "dateCreate")
  final DateTime? dateCreate;
  @override
  @JsonKey(name: "dateUpdate")
  final DateTime? dateUpdate;
  @override
  @JsonKey(name: "isDeleted")
  final bool? isDeleted;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "address")
  final String? address;
  @override
  @JsonKey(name: "avatar")
  final String? avatar;

  @override
  String toString() {
    return 'User(name: $name, userName: $userName, gender: $gender, status: $status, roleId: $roleId, id: $id, dateCreate: $dateCreate, dateUpdate: $dateUpdate, isDeleted: $isDeleted, phone: $phone, address: $address, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateCreate, dateCreate) ||
                other.dateCreate == dateCreate) &&
            (identical(other.dateUpdate, dateUpdate) ||
                other.dateUpdate == dateUpdate) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, userName, gender, status,
      roleId, id, dateCreate, dateUpdate, isDeleted, phone, address, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: "name") final String? name,
      @JsonKey(name: "userName") final String? userName,
      @JsonKey(name: "gender") final String? gender,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "roleId") final String? roleId,
      @JsonKey(name: "id") final String? id,
      @JsonKey(name: "dateCreate") final DateTime? dateCreate,
      @JsonKey(name: "dateUpdate") final DateTime? dateUpdate,
      @JsonKey(name: "isDeleted") final bool? isDeleted,
      @JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "address") final String? address,
      @JsonKey(name: "avatar") final String? avatar}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "userName")
  String? get userName;
  @override
  @JsonKey(name: "gender")
  String? get gender;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "roleId")
  String? get roleId;
  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "dateCreate")
  DateTime? get dateCreate;
  @override
  @JsonKey(name: "dateUpdate")
  DateTime? get dateUpdate;
  @override
  @JsonKey(name: "isDeleted")
  bool? get isDeleted;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "address")
  String? get address;
  @override
  @JsonKey(name: "avatar")
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
