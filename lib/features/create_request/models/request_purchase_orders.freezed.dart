// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_purchase_orders.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestPurchaseOrders _$RequestPurchaseOrdersFromJson(
    Map<String, dynamic> json) {
  return _RequestPurchaseOrders.fromJson(json);
}

/// @nodoc
mixin _$RequestPurchaseOrders {
  @JsonKey(name: "uri")
  dynamic get uri => throw _privateConstructorUsedError;
  @JsonKey(name: "poCode")
  String get poCode => throw _privateConstructorUsedError;
  @JsonKey(name: "supplier")
  String get supplier => throw _privateConstructorUsedError;
  @JsonKey(name: "licensePlate")
  String get licensePlate => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: "totalPhase")
  int get totalPhase => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: "fax")
  String get fax => throw _privateConstructorUsedError;
  @JsonKey(name: "notes")
  String get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "totalPrice")
  int get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "purchaseOrderPhases")
  List<PurchaseOrderPhase> get purchaseOrderPhases =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestPurchaseOrdersCopyWith<RequestPurchaseOrders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestPurchaseOrdersCopyWith<$Res> {
  factory $RequestPurchaseOrdersCopyWith(RequestPurchaseOrders value,
          $Res Function(RequestPurchaseOrders) then) =
      _$RequestPurchaseOrdersCopyWithImpl<$Res, RequestPurchaseOrders>;
  @useResult
  $Res call(
      {@JsonKey(name: "uri") dynamic uri,
      @JsonKey(name: "poCode") String poCode,
      @JsonKey(name: "supplier") String supplier,
      @JsonKey(name: "licensePlate") String licensePlate,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "totalPhase") int totalPhase,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "fax") String fax,
      @JsonKey(name: "notes") String notes,
      @JsonKey(name: "totalPrice") int totalPrice,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "purchaseOrderPhases")
      List<PurchaseOrderPhase> purchaseOrderPhases});
}

/// @nodoc
class _$RequestPurchaseOrdersCopyWithImpl<$Res,
        $Val extends RequestPurchaseOrders>
    implements $RequestPurchaseOrdersCopyWith<$Res> {
  _$RequestPurchaseOrdersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? poCode = null,
    Object? supplier = null,
    Object? licensePlate = null,
    Object? date = null,
    Object? totalPhase = null,
    Object? address = null,
    Object? fax = null,
    Object? notes = null,
    Object? totalPrice = null,
    Object? status = null,
    Object? userId = null,
    Object? purchaseOrderPhases = null,
  }) {
    return _then(_value.copyWith(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as dynamic,
      poCode: null == poCode
          ? _value.poCode
          : poCode // ignore: cast_nullable_to_non_nullable
              as String,
      supplier: null == supplier
          ? _value.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as String,
      licensePlate: null == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalPhase: null == totalPhase
          ? _value.totalPhase
          : totalPhase // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      fax: null == fax
          ? _value.fax
          : fax // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseOrderPhases: null == purchaseOrderPhases
          ? _value.purchaseOrderPhases
          : purchaseOrderPhases // ignore: cast_nullable_to_non_nullable
              as List<PurchaseOrderPhase>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestPurchaseOrdersImplCopyWith<$Res>
    implements $RequestPurchaseOrdersCopyWith<$Res> {
  factory _$$RequestPurchaseOrdersImplCopyWith(
          _$RequestPurchaseOrdersImpl value,
          $Res Function(_$RequestPurchaseOrdersImpl) then) =
      __$$RequestPurchaseOrdersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uri") dynamic uri,
      @JsonKey(name: "poCode") String poCode,
      @JsonKey(name: "supplier") String supplier,
      @JsonKey(name: "licensePlate") String licensePlate,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "totalPhase") int totalPhase,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "fax") String fax,
      @JsonKey(name: "notes") String notes,
      @JsonKey(name: "totalPrice") int totalPrice,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "purchaseOrderPhases")
      List<PurchaseOrderPhase> purchaseOrderPhases});
}

/// @nodoc
class __$$RequestPurchaseOrdersImplCopyWithImpl<$Res>
    extends _$RequestPurchaseOrdersCopyWithImpl<$Res,
        _$RequestPurchaseOrdersImpl>
    implements _$$RequestPurchaseOrdersImplCopyWith<$Res> {
  __$$RequestPurchaseOrdersImplCopyWithImpl(_$RequestPurchaseOrdersImpl _value,
      $Res Function(_$RequestPurchaseOrdersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? poCode = null,
    Object? supplier = null,
    Object? licensePlate = null,
    Object? date = null,
    Object? totalPhase = null,
    Object? address = null,
    Object? fax = null,
    Object? notes = null,
    Object? totalPrice = null,
    Object? status = null,
    Object? userId = null,
    Object? purchaseOrderPhases = null,
  }) {
    return _then(_$RequestPurchaseOrdersImpl(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as dynamic,
      poCode: null == poCode
          ? _value.poCode
          : poCode // ignore: cast_nullable_to_non_nullable
              as String,
      supplier: null == supplier
          ? _value.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as String,
      licensePlate: null == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalPhase: null == totalPhase
          ? _value.totalPhase
          : totalPhase // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      fax: null == fax
          ? _value.fax
          : fax // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseOrderPhases: null == purchaseOrderPhases
          ? _value._purchaseOrderPhases
          : purchaseOrderPhases // ignore: cast_nullable_to_non_nullable
              as List<PurchaseOrderPhase>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestPurchaseOrdersImpl implements _RequestPurchaseOrders {
  const _$RequestPurchaseOrdersImpl(
      {@JsonKey(name: "uri") required this.uri,
      @JsonKey(name: "poCode") required this.poCode,
      @JsonKey(name: "supplier") required this.supplier,
      @JsonKey(name: "licensePlate") required this.licensePlate,
      @JsonKey(name: "date") required this.date,
      @JsonKey(name: "totalPhase") required this.totalPhase,
      @JsonKey(name: "address") required this.address,
      @JsonKey(name: "fax") required this.fax,
      @JsonKey(name: "notes") required this.notes,
      @JsonKey(name: "totalPrice") required this.totalPrice,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "userId") required this.userId,
      @JsonKey(name: "purchaseOrderPhases")
      required final List<PurchaseOrderPhase> purchaseOrderPhases})
      : _purchaseOrderPhases = purchaseOrderPhases;

  factory _$RequestPurchaseOrdersImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestPurchaseOrdersImplFromJson(json);

  @override
  @JsonKey(name: "uri")
  final dynamic uri;
  @override
  @JsonKey(name: "poCode")
  final String poCode;
  @override
  @JsonKey(name: "supplier")
  final String supplier;
  @override
  @JsonKey(name: "licensePlate")
  final String licensePlate;
  @override
  @JsonKey(name: "date")
  final DateTime date;
  @override
  @JsonKey(name: "totalPhase")
  final int totalPhase;
  @override
  @JsonKey(name: "address")
  final String address;
  @override
  @JsonKey(name: "fax")
  final String fax;
  @override
  @JsonKey(name: "notes")
  final String notes;
  @override
  @JsonKey(name: "totalPrice")
  final int totalPrice;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "userId")
  final String userId;
  final List<PurchaseOrderPhase> _purchaseOrderPhases;
  @override
  @JsonKey(name: "purchaseOrderPhases")
  List<PurchaseOrderPhase> get purchaseOrderPhases {
    if (_purchaseOrderPhases is EqualUnmodifiableListView)
      return _purchaseOrderPhases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_purchaseOrderPhases);
  }

  @override
  String toString() {
    return 'RequestPurchaseOrders(uri: $uri, poCode: $poCode, supplier: $supplier, licensePlate: $licensePlate, date: $date, totalPhase: $totalPhase, address: $address, fax: $fax, notes: $notes, totalPrice: $totalPrice, status: $status, userId: $userId, purchaseOrderPhases: $purchaseOrderPhases)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestPurchaseOrdersImpl &&
            const DeepCollectionEquality().equals(other.uri, uri) &&
            (identical(other.poCode, poCode) || other.poCode == poCode) &&
            (identical(other.supplier, supplier) ||
                other.supplier == supplier) &&
            (identical(other.licensePlate, licensePlate) ||
                other.licensePlate == licensePlate) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.totalPhase, totalPhase) ||
                other.totalPhase == totalPhase) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.fax, fax) || other.fax == fax) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._purchaseOrderPhases, _purchaseOrderPhases));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uri),
      poCode,
      supplier,
      licensePlate,
      date,
      totalPhase,
      address,
      fax,
      notes,
      totalPrice,
      status,
      userId,
      const DeepCollectionEquality().hash(_purchaseOrderPhases));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestPurchaseOrdersImplCopyWith<_$RequestPurchaseOrdersImpl>
      get copyWith => __$$RequestPurchaseOrdersImplCopyWithImpl<
          _$RequestPurchaseOrdersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestPurchaseOrdersImplToJson(
      this,
    );
  }
}

abstract class _RequestPurchaseOrders implements RequestPurchaseOrders {
  const factory _RequestPurchaseOrders(
          {@JsonKey(name: "uri") required final dynamic uri,
          @JsonKey(name: "poCode") required final String poCode,
          @JsonKey(name: "supplier") required final String supplier,
          @JsonKey(name: "licensePlate") required final String licensePlate,
          @JsonKey(name: "date") required final DateTime date,
          @JsonKey(name: "totalPhase") required final int totalPhase,
          @JsonKey(name: "address") required final String address,
          @JsonKey(name: "fax") required final String fax,
          @JsonKey(name: "notes") required final String notes,
          @JsonKey(name: "totalPrice") required final int totalPrice,
          @JsonKey(name: "status") required final String status,
          @JsonKey(name: "userId") required final String userId,
          @JsonKey(name: "purchaseOrderPhases")
          required final List<PurchaseOrderPhase> purchaseOrderPhases}) =
      _$RequestPurchaseOrdersImpl;

  factory _RequestPurchaseOrders.fromJson(Map<String, dynamic> json) =
      _$RequestPurchaseOrdersImpl.fromJson;

  @override
  @JsonKey(name: "uri")
  dynamic get uri;
  @override
  @JsonKey(name: "poCode")
  String get poCode;
  @override
  @JsonKey(name: "supplier")
  String get supplier;
  @override
  @JsonKey(name: "licensePlate")
  String get licensePlate;
  @override
  @JsonKey(name: "date")
  DateTime get date;
  @override
  @JsonKey(name: "totalPhase")
  int get totalPhase;
  @override
  @JsonKey(name: "address")
  String get address;
  @override
  @JsonKey(name: "fax")
  String get fax;
  @override
  @JsonKey(name: "notes")
  String get notes;
  @override
  @JsonKey(name: "totalPrice")
  int get totalPrice;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "userId")
  String get userId;
  @override
  @JsonKey(name: "purchaseOrderPhases")
  List<PurchaseOrderPhase> get purchaseOrderPhases;
  @override
  @JsonKey(ignore: true)
  _$$RequestPurchaseOrdersImplCopyWith<_$RequestPurchaseOrdersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PurchaseOrderPhase _$PurchaseOrderPhaseFromJson(Map<String, dynamic> json) {
  return _PurchaseOrderPhase.fromJson(json);
}

/// @nodoc
mixin _$PurchaseOrderPhase {
  @JsonKey(name: "uri")
  dynamic get uri => throw _privateConstructorUsedError;
  @JsonKey(name: "expectedDate")
  DateTime get expectedDate => throw _privateConstructorUsedError;
  @JsonKey(name: "phase")
  int get phase => throw _privateConstructorUsedError;
  @JsonKey(name: "notes")
  String get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "totalPrice")
  int get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "deliver")
  String get deliver => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "purchaseOrderId")
  String get purchaseOrderId => throw _privateConstructorUsedError;
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
  $PurchaseOrderPhaseCopyWith<PurchaseOrderPhase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseOrderPhaseCopyWith<$Res> {
  factory $PurchaseOrderPhaseCopyWith(
          PurchaseOrderPhase value, $Res Function(PurchaseOrderPhase) then) =
      _$PurchaseOrderPhaseCopyWithImpl<$Res, PurchaseOrderPhase>;
  @useResult
  $Res call(
      {@JsonKey(name: "uri") dynamic uri,
      @JsonKey(name: "expectedDate") DateTime expectedDate,
      @JsonKey(name: "phase") int phase,
      @JsonKey(name: "notes") String notes,
      @JsonKey(name: "totalPrice") int totalPrice,
      @JsonKey(name: "deliver") String deliver,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "purchaseOrderId") String purchaseOrderId,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "dateCreate") DateTime dateCreate,
      @JsonKey(name: "dateUpdate") DateTime dateUpdate,
      @JsonKey(name: "isDeleted") bool isDeleted});
}

/// @nodoc
class _$PurchaseOrderPhaseCopyWithImpl<$Res, $Val extends PurchaseOrderPhase>
    implements $PurchaseOrderPhaseCopyWith<$Res> {
  _$PurchaseOrderPhaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? expectedDate = null,
    Object? phase = null,
    Object? notes = null,
    Object? totalPrice = null,
    Object? deliver = null,
    Object? status = null,
    Object? purchaseOrderId = null,
    Object? id = null,
    Object? dateCreate = null,
    Object? dateUpdate = null,
    Object? isDeleted = null,
  }) {
    return _then(_value.copyWith(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as dynamic,
      expectedDate: null == expectedDate
          ? _value.expectedDate
          : expectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as int,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      deliver: null == deliver
          ? _value.deliver
          : deliver // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseOrderId: null == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PurchaseOrderPhaseImplCopyWith<$Res>
    implements $PurchaseOrderPhaseCopyWith<$Res> {
  factory _$$PurchaseOrderPhaseImplCopyWith(_$PurchaseOrderPhaseImpl value,
          $Res Function(_$PurchaseOrderPhaseImpl) then) =
      __$$PurchaseOrderPhaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uri") dynamic uri,
      @JsonKey(name: "expectedDate") DateTime expectedDate,
      @JsonKey(name: "phase") int phase,
      @JsonKey(name: "notes") String notes,
      @JsonKey(name: "totalPrice") int totalPrice,
      @JsonKey(name: "deliver") String deliver,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "purchaseOrderId") String purchaseOrderId,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "dateCreate") DateTime dateCreate,
      @JsonKey(name: "dateUpdate") DateTime dateUpdate,
      @JsonKey(name: "isDeleted") bool isDeleted});
}

/// @nodoc
class __$$PurchaseOrderPhaseImplCopyWithImpl<$Res>
    extends _$PurchaseOrderPhaseCopyWithImpl<$Res, _$PurchaseOrderPhaseImpl>
    implements _$$PurchaseOrderPhaseImplCopyWith<$Res> {
  __$$PurchaseOrderPhaseImplCopyWithImpl(_$PurchaseOrderPhaseImpl _value,
      $Res Function(_$PurchaseOrderPhaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? expectedDate = null,
    Object? phase = null,
    Object? notes = null,
    Object? totalPrice = null,
    Object? deliver = null,
    Object? status = null,
    Object? purchaseOrderId = null,
    Object? id = null,
    Object? dateCreate = null,
    Object? dateUpdate = null,
    Object? isDeleted = null,
  }) {
    return _then(_$PurchaseOrderPhaseImpl(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as dynamic,
      expectedDate: null == expectedDate
          ? _value.expectedDate
          : expectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as int,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      deliver: null == deliver
          ? _value.deliver
          : deliver // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseOrderId: null == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
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
class _$PurchaseOrderPhaseImpl implements _PurchaseOrderPhase {
  const _$PurchaseOrderPhaseImpl(
      {@JsonKey(name: "uri") required this.uri,
      @JsonKey(name: "expectedDate") required this.expectedDate,
      @JsonKey(name: "phase") required this.phase,
      @JsonKey(name: "notes") required this.notes,
      @JsonKey(name: "totalPrice") required this.totalPrice,
      @JsonKey(name: "deliver") required this.deliver,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "purchaseOrderId") required this.purchaseOrderId,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "dateCreate") required this.dateCreate,
      @JsonKey(name: "dateUpdate") required this.dateUpdate,
      @JsonKey(name: "isDeleted") required this.isDeleted});

  factory _$PurchaseOrderPhaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseOrderPhaseImplFromJson(json);

  @override
  @JsonKey(name: "uri")
  final dynamic uri;
  @override
  @JsonKey(name: "expectedDate")
  final DateTime expectedDate;
  @override
  @JsonKey(name: "phase")
  final int phase;
  @override
  @JsonKey(name: "notes")
  final String notes;
  @override
  @JsonKey(name: "totalPrice")
  final int totalPrice;
  @override
  @JsonKey(name: "deliver")
  final String deliver;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "purchaseOrderId")
  final String purchaseOrderId;
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
    return 'PurchaseOrderPhase(uri: $uri, expectedDate: $expectedDate, phase: $phase, notes: $notes, totalPrice: $totalPrice, deliver: $deliver, status: $status, purchaseOrderId: $purchaseOrderId, id: $id, dateCreate: $dateCreate, dateUpdate: $dateUpdate, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseOrderPhaseImpl &&
            const DeepCollectionEquality().equals(other.uri, uri) &&
            (identical(other.expectedDate, expectedDate) ||
                other.expectedDate == expectedDate) &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.deliver, deliver) || other.deliver == deliver) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId) &&
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
      const DeepCollectionEquality().hash(uri),
      expectedDate,
      phase,
      notes,
      totalPrice,
      deliver,
      status,
      purchaseOrderId,
      id,
      dateCreate,
      dateUpdate,
      isDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseOrderPhaseImplCopyWith<_$PurchaseOrderPhaseImpl> get copyWith =>
      __$$PurchaseOrderPhaseImplCopyWithImpl<_$PurchaseOrderPhaseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseOrderPhaseImplToJson(
      this,
    );
  }
}

abstract class _PurchaseOrderPhase implements PurchaseOrderPhase {
  const factory _PurchaseOrderPhase(
      {@JsonKey(name: "uri") required final dynamic uri,
      @JsonKey(name: "expectedDate") required final DateTime expectedDate,
      @JsonKey(name: "phase") required final int phase,
      @JsonKey(name: "notes") required final String notes,
      @JsonKey(name: "totalPrice") required final int totalPrice,
      @JsonKey(name: "deliver") required final String deliver,
      @JsonKey(name: "status") required final String status,
      @JsonKey(name: "purchaseOrderId") required final String purchaseOrderId,
      @JsonKey(name: "id") required final String id,
      @JsonKey(name: "dateCreate") required final DateTime dateCreate,
      @JsonKey(name: "dateUpdate") required final DateTime dateUpdate,
      @JsonKey(name: "isDeleted")
      required final bool isDeleted}) = _$PurchaseOrderPhaseImpl;

  factory _PurchaseOrderPhase.fromJson(Map<String, dynamic> json) =
      _$PurchaseOrderPhaseImpl.fromJson;

  @override
  @JsonKey(name: "uri")
  dynamic get uri;
  @override
  @JsonKey(name: "expectedDate")
  DateTime get expectedDate;
  @override
  @JsonKey(name: "phase")
  int get phase;
  @override
  @JsonKey(name: "notes")
  String get notes;
  @override
  @JsonKey(name: "totalPrice")
  int get totalPrice;
  @override
  @JsonKey(name: "deliver")
  String get deliver;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "purchaseOrderId")
  String get purchaseOrderId;
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
  _$$PurchaseOrderPhaseImplCopyWith<_$PurchaseOrderPhaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
