// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateUser _$UpdateUserFromJson(Map<String, dynamic> json) {
  return _UpdateUser.fromJson(json);
}

/// @nodoc
mixin _$UpdateUser {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "userName")
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "gender")
  int? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserCopyWith<UpdateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserCopyWith<$Res> {
  factory $UpdateUserCopyWith(
          UpdateUser value, $Res Function(UpdateUser) then) =
      _$UpdateUserCopyWithImpl<$Res, UpdateUser>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "gender") int? gender,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "address") String? address});
}

/// @nodoc
class _$UpdateUserCopyWithImpl<$Res, $Val extends UpdateUser>
    implements $UpdateUserCopyWith<$Res> {
  _$UpdateUserCopyWithImpl(this._value, this._then);

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
    Object? phone = freezed,
    Object? address = freezed,
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
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUserImplCopyWith<$Res>
    implements $UpdateUserCopyWith<$Res> {
  factory _$$UpdateUserImplCopyWith(
          _$UpdateUserImpl value, $Res Function(_$UpdateUserImpl) then) =
      __$$UpdateUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "gender") int? gender,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "address") String? address});
}

/// @nodoc
class __$$UpdateUserImplCopyWithImpl<$Res>
    extends _$UpdateUserCopyWithImpl<$Res, _$UpdateUserImpl>
    implements _$$UpdateUserImplCopyWith<$Res> {
  __$$UpdateUserImplCopyWithImpl(
      _$UpdateUserImpl _value, $Res Function(_$UpdateUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? userName = freezed,
    Object? gender = freezed,
    Object? phone = freezed,
    Object? address = freezed,
  }) {
    return _then(_$UpdateUserImpl(
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
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserImpl implements _UpdateUser {
  const _$UpdateUserImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "userName") this.userName,
      @JsonKey(name: "gender") this.gender,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "address") this.address});

  factory _$UpdateUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "userName")
  final String? userName;
  @override
  @JsonKey(name: "gender")
  final int? gender;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "address")
  final String? address;

  @override
  String toString() {
    return 'UpdateUser(name: $name, userName: $userName, gender: $gender, phone: $phone, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, userName, gender, phone, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      __$$UpdateUserImplCopyWithImpl<_$UpdateUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserImplToJson(
      this,
    );
  }
}

abstract class _UpdateUser implements UpdateUser {
  const factory _UpdateUser(
      {@JsonKey(name: "name") final String? name,
      @JsonKey(name: "userName") final String? userName,
      @JsonKey(name: "gender") final int? gender,
      @JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "address") final String? address}) = _$UpdateUserImpl;

  factory _UpdateUser.fromJson(Map<String, dynamic> json) =
      _$UpdateUserImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "userName")
  String? get userName;
  @override
  @JsonKey(name: "gender")
  int? get gender;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "address")
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
