// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_order_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PurchaseOrderDetail _$PurchaseOrderDetailFromJson(Map<String, dynamic> json) {
  return _PurchaseOrderDetail.fromJson(json);
}

/// @nodoc
mixin _$PurchaseOrderDetail {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
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
  @JsonKey(name: "staffName")
  String get staffName => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "listDetails")
  List<ListDetail> get listDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseOrderDetailCopyWith<PurchaseOrderDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseOrderDetailCopyWith<$Res> {
  factory $PurchaseOrderDetailCopyWith(
          PurchaseOrderDetail value, $Res Function(PurchaseOrderDetail) then) =
      _$PurchaseOrderDetailCopyWithImpl<$Res, PurchaseOrderDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "poCode") String poCode,
      @JsonKey(name: "supplier") String supplier,
      @JsonKey(name: "licensePlate") String licensePlate,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "totalPhase") int totalPhase,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "fax") String fax,
      @JsonKey(name: "notes") String notes,
      @JsonKey(name: "totalPrice") int totalPrice,
      @JsonKey(name: "staffName") String staffName,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "listDetails") List<ListDetail> listDetails});
}

/// @nodoc
class _$PurchaseOrderDetailCopyWithImpl<$Res, $Val extends PurchaseOrderDetail>
    implements $PurchaseOrderDetailCopyWith<$Res> {
  _$PurchaseOrderDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? poCode = null,
    Object? supplier = null,
    Object? licensePlate = null,
    Object? date = null,
    Object? totalPhase = null,
    Object? address = null,
    Object? fax = null,
    Object? notes = null,
    Object? totalPrice = null,
    Object? staffName = null,
    Object? status = null,
    Object? listDetails = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      staffName: null == staffName
          ? _value.staffName
          : staffName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      listDetails: null == listDetails
          ? _value.listDetails
          : listDetails // ignore: cast_nullable_to_non_nullable
              as List<ListDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PurchaseOrderDetailImplCopyWith<$Res>
    implements $PurchaseOrderDetailCopyWith<$Res> {
  factory _$$PurchaseOrderDetailImplCopyWith(_$PurchaseOrderDetailImpl value,
          $Res Function(_$PurchaseOrderDetailImpl) then) =
      __$$PurchaseOrderDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "poCode") String poCode,
      @JsonKey(name: "supplier") String supplier,
      @JsonKey(name: "licensePlate") String licensePlate,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "totalPhase") int totalPhase,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "fax") String fax,
      @JsonKey(name: "notes") String notes,
      @JsonKey(name: "totalPrice") int totalPrice,
      @JsonKey(name: "staffName") String staffName,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "listDetails") List<ListDetail> listDetails});
}

/// @nodoc
class __$$PurchaseOrderDetailImplCopyWithImpl<$Res>
    extends _$PurchaseOrderDetailCopyWithImpl<$Res, _$PurchaseOrderDetailImpl>
    implements _$$PurchaseOrderDetailImplCopyWith<$Res> {
  __$$PurchaseOrderDetailImplCopyWithImpl(_$PurchaseOrderDetailImpl _value,
      $Res Function(_$PurchaseOrderDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? poCode = null,
    Object? supplier = null,
    Object? licensePlate = null,
    Object? date = null,
    Object? totalPhase = null,
    Object? address = null,
    Object? fax = null,
    Object? notes = null,
    Object? totalPrice = null,
    Object? staffName = null,
    Object? status = null,
    Object? listDetails = null,
  }) {
    return _then(_$PurchaseOrderDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      staffName: null == staffName
          ? _value.staffName
          : staffName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      listDetails: null == listDetails
          ? _value._listDetails
          : listDetails // ignore: cast_nullable_to_non_nullable
              as List<ListDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchaseOrderDetailImpl implements _PurchaseOrderDetail {
  const _$PurchaseOrderDetailImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "poCode") required this.poCode,
      @JsonKey(name: "supplier") required this.supplier,
      @JsonKey(name: "licensePlate") required this.licensePlate,
      @JsonKey(name: "date") required this.date,
      @JsonKey(name: "totalPhase") required this.totalPhase,
      @JsonKey(name: "address") required this.address,
      @JsonKey(name: "fax") required this.fax,
      @JsonKey(name: "notes") required this.notes,
      @JsonKey(name: "totalPrice") required this.totalPrice,
      @JsonKey(name: "staffName") required this.staffName,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "listDetails")
      required final List<ListDetail> listDetails})
      : _listDetails = listDetails;

  factory _$PurchaseOrderDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseOrderDetailImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
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
  @JsonKey(name: "staffName")
  final String staffName;
  @override
  @JsonKey(name: "status")
  final String status;
  final List<ListDetail> _listDetails;
  @override
  @JsonKey(name: "listDetails")
  List<ListDetail> get listDetails {
    if (_listDetails is EqualUnmodifiableListView) return _listDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listDetails);
  }

  @override
  String toString() {
    return 'PurchaseOrderDetail(id: $id, poCode: $poCode, supplier: $supplier, licensePlate: $licensePlate, date: $date, totalPhase: $totalPhase, address: $address, fax: $fax, notes: $notes, totalPrice: $totalPrice, staffName: $staffName, status: $status, listDetails: $listDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseOrderDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.staffName, staffName) ||
                other.staffName == staffName) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._listDetails, _listDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      poCode,
      supplier,
      licensePlate,
      date,
      totalPhase,
      address,
      fax,
      notes,
      totalPrice,
      staffName,
      status,
      const DeepCollectionEquality().hash(_listDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseOrderDetailImplCopyWith<_$PurchaseOrderDetailImpl> get copyWith =>
      __$$PurchaseOrderDetailImplCopyWithImpl<_$PurchaseOrderDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseOrderDetailImplToJson(
      this,
    );
  }
}

abstract class _PurchaseOrderDetail implements PurchaseOrderDetail {
  const factory _PurchaseOrderDetail(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "poCode") required final String poCode,
      @JsonKey(name: "supplier") required final String supplier,
      @JsonKey(name: "licensePlate") required final String licensePlate,
      @JsonKey(name: "date") required final DateTime date,
      @JsonKey(name: "totalPhase") required final int totalPhase,
      @JsonKey(name: "address") required final String address,
      @JsonKey(name: "fax") required final String fax,
      @JsonKey(name: "notes") required final String notes,
      @JsonKey(name: "totalPrice") required final int totalPrice,
      @JsonKey(name: "staffName") required final String staffName,
      @JsonKey(name: "status") required final String status,
      @JsonKey(name: "listDetails")
      required final List<ListDetail> listDetails}) = _$PurchaseOrderDetailImpl;

  factory _PurchaseOrderDetail.fromJson(Map<String, dynamic> json) =
      _$PurchaseOrderDetailImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
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
  @JsonKey(name: "staffName")
  String get staffName;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "listDetails")
  List<ListDetail> get listDetails;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseOrderDetailImplCopyWith<_$PurchaseOrderDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListDetail _$ListDetailFromJson(Map<String, dynamic> json) {
  return _ListDetail.fromJson(json);
}

/// @nodoc
mixin _$ListDetail {
  @JsonKey(name: "materialName")
  String get materialName => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "unit")
  String get unit => throw _privateConstructorUsedError;
  @JsonKey(name: "unitPrice")
  int get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "subTotal")
  int get subTotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListDetailCopyWith<ListDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListDetailCopyWith<$Res> {
  factory $ListDetailCopyWith(
          ListDetail value, $Res Function(ListDetail) then) =
      _$ListDetailCopyWithImpl<$Res, ListDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "materialName") String materialName,
      @JsonKey(name: "quantity") int quantity,
      @JsonKey(name: "unit") String unit,
      @JsonKey(name: "unitPrice") int unitPrice,
      @JsonKey(name: "subTotal") int subTotal});
}

/// @nodoc
class _$ListDetailCopyWithImpl<$Res, $Val extends ListDetail>
    implements $ListDetailCopyWith<$Res> {
  _$ListDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materialName = null,
    Object? quantity = null,
    Object? unit = null,
    Object? unitPrice = null,
    Object? subTotal = null,
  }) {
    return _then(_value.copyWith(
      materialName: null == materialName
          ? _value.materialName
          : materialName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as int,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListDetailImplCopyWith<$Res>
    implements $ListDetailCopyWith<$Res> {
  factory _$$ListDetailImplCopyWith(
          _$ListDetailImpl value, $Res Function(_$ListDetailImpl) then) =
      __$$ListDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "materialName") String materialName,
      @JsonKey(name: "quantity") int quantity,
      @JsonKey(name: "unit") String unit,
      @JsonKey(name: "unitPrice") int unitPrice,
      @JsonKey(name: "subTotal") int subTotal});
}

/// @nodoc
class __$$ListDetailImplCopyWithImpl<$Res>
    extends _$ListDetailCopyWithImpl<$Res, _$ListDetailImpl>
    implements _$$ListDetailImplCopyWith<$Res> {
  __$$ListDetailImplCopyWithImpl(
      _$ListDetailImpl _value, $Res Function(_$ListDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materialName = null,
    Object? quantity = null,
    Object? unit = null,
    Object? unitPrice = null,
    Object? subTotal = null,
  }) {
    return _then(_$ListDetailImpl(
      materialName: null == materialName
          ? _value.materialName
          : materialName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as int,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListDetailImpl implements _ListDetail {
  const _$ListDetailImpl(
      {@JsonKey(name: "materialName") required this.materialName,
      @JsonKey(name: "quantity") required this.quantity,
      @JsonKey(name: "unit") required this.unit,
      @JsonKey(name: "unitPrice") required this.unitPrice,
      @JsonKey(name: "subTotal") required this.subTotal});

  factory _$ListDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListDetailImplFromJson(json);

  @override
  @JsonKey(name: "materialName")
  final String materialName;
  @override
  @JsonKey(name: "quantity")
  final int quantity;
  @override
  @JsonKey(name: "unit")
  final String unit;
  @override
  @JsonKey(name: "unitPrice")
  final int unitPrice;
  @override
  @JsonKey(name: "subTotal")
  final int subTotal;

  @override
  String toString() {
    return 'ListDetail(materialName: $materialName, quantity: $quantity, unit: $unit, unitPrice: $unitPrice, subTotal: $subTotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListDetailImpl &&
            (identical(other.materialName, materialName) ||
                other.materialName == materialName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, materialName, quantity, unit, unitPrice, subTotal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListDetailImplCopyWith<_$ListDetailImpl> get copyWith =>
      __$$ListDetailImplCopyWithImpl<_$ListDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListDetailImplToJson(
      this,
    );
  }
}

abstract class _ListDetail implements ListDetail {
  const factory _ListDetail(
          {@JsonKey(name: "materialName") required final String materialName,
          @JsonKey(name: "quantity") required final int quantity,
          @JsonKey(name: "unit") required final String unit,
          @JsonKey(name: "unitPrice") required final int unitPrice,
          @JsonKey(name: "subTotal") required final int subTotal}) =
      _$ListDetailImpl;

  factory _ListDetail.fromJson(Map<String, dynamic> json) =
      _$ListDetailImpl.fromJson;

  @override
  @JsonKey(name: "materialName")
  String get materialName;
  @override
  @JsonKey(name: "quantity")
  int get quantity;
  @override
  @JsonKey(name: "unit")
  String get unit;
  @override
  @JsonKey(name: "unitPrice")
  int get unitPrice;
  @override
  @JsonKey(name: "subTotal")
  int get subTotal;
  @override
  @JsonKey(ignore: true)
  _$$ListDetailImplCopyWith<_$ListDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
