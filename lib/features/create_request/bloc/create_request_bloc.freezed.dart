// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateRequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index, String warehouseId)
        fetRequestPurchaseOrders,
    required TResult Function(List<RequestPurchaseOrders> list,
            RequestPurchaseOrders purchaseOrder)
        selectPurchaseOrder,
    required TResult Function(int title, String warehouseId,
            String relatedInformation, int phase, String description)
        createRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index, String warehouseId)? fetRequestPurchaseOrders,
    TResult? Function(List<RequestPurchaseOrders> list,
            RequestPurchaseOrders purchaseOrder)?
        selectPurchaseOrder,
    TResult? Function(int title, String warehouseId, String relatedInformation,
            int phase, String description)?
        createRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index, String warehouseId)? fetRequestPurchaseOrders,
    TResult Function(List<RequestPurchaseOrders> list,
            RequestPurchaseOrders purchaseOrder)?
        selectPurchaseOrder,
    TResult Function(int title, String warehouseId, String relatedInformation,
            int phase, String description)?
        createRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchRequestPurchaseOrders value)
        fetRequestPurchaseOrders,
    required TResult Function(_SelectPurchaseOrder value) selectPurchaseOrder,
    required TResult Function(_CreateRequest value) createRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchRequestPurchaseOrders value)?
        fetRequestPurchaseOrders,
    TResult? Function(_SelectPurchaseOrder value)? selectPurchaseOrder,
    TResult? Function(_CreateRequest value)? createRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchRequestPurchaseOrders value)?
        fetRequestPurchaseOrders,
    TResult Function(_SelectPurchaseOrder value)? selectPurchaseOrder,
    TResult Function(_CreateRequest value)? createRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRequestEventCopyWith<$Res> {
  factory $CreateRequestEventCopyWith(
          CreateRequestEvent value, $Res Function(CreateRequestEvent) then) =
      _$CreateRequestEventCopyWithImpl<$Res, CreateRequestEvent>;
}

/// @nodoc
class _$CreateRequestEventCopyWithImpl<$Res, $Val extends CreateRequestEvent>
    implements $CreateRequestEventCopyWith<$Res> {
  _$CreateRequestEventCopyWithImpl(this._value, this._then);

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
    extends _$CreateRequestEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'CreateRequestEvent.started()';
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
    required TResult Function(int index, String warehouseId)
        fetRequestPurchaseOrders,
    required TResult Function(List<RequestPurchaseOrders> list,
            RequestPurchaseOrders purchaseOrder)
        selectPurchaseOrder,
    required TResult Function(int title, String warehouseId,
            String relatedInformation, int phase, String description)
        createRequest,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index, String warehouseId)? fetRequestPurchaseOrders,
    TResult? Function(List<RequestPurchaseOrders> list,
            RequestPurchaseOrders purchaseOrder)?
        selectPurchaseOrder,
    TResult? Function(int title, String warehouseId, String relatedInformation,
            int phase, String description)?
        createRequest,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index, String warehouseId)? fetRequestPurchaseOrders,
    TResult Function(List<RequestPurchaseOrders> list,
            RequestPurchaseOrders purchaseOrder)?
        selectPurchaseOrder,
    TResult Function(int title, String warehouseId, String relatedInformation,
            int phase, String description)?
        createRequest,
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
    required TResult Function(_FetchRequestPurchaseOrders value)
        fetRequestPurchaseOrders,
    required TResult Function(_SelectPurchaseOrder value) selectPurchaseOrder,
    required TResult Function(_CreateRequest value) createRequest,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchRequestPurchaseOrders value)?
        fetRequestPurchaseOrders,
    TResult? Function(_SelectPurchaseOrder value)? selectPurchaseOrder,
    TResult? Function(_CreateRequest value)? createRequest,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchRequestPurchaseOrders value)?
        fetRequestPurchaseOrders,
    TResult Function(_SelectPurchaseOrder value)? selectPurchaseOrder,
    TResult Function(_CreateRequest value)? createRequest,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreateRequestEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchRequestPurchaseOrdersImplCopyWith<$Res> {
  factory _$$FetchRequestPurchaseOrdersImplCopyWith(
          _$FetchRequestPurchaseOrdersImpl value,
          $Res Function(_$FetchRequestPurchaseOrdersImpl) then) =
      __$$FetchRequestPurchaseOrdersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, String warehouseId});
}

/// @nodoc
class __$$FetchRequestPurchaseOrdersImplCopyWithImpl<$Res>
    extends _$CreateRequestEventCopyWithImpl<$Res,
        _$FetchRequestPurchaseOrdersImpl>
    implements _$$FetchRequestPurchaseOrdersImplCopyWith<$Res> {
  __$$FetchRequestPurchaseOrdersImplCopyWithImpl(
      _$FetchRequestPurchaseOrdersImpl _value,
      $Res Function(_$FetchRequestPurchaseOrdersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? warehouseId = null,
  }) {
    return _then(_$FetchRequestPurchaseOrdersImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      null == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchRequestPurchaseOrdersImpl implements _FetchRequestPurchaseOrders {
  const _$FetchRequestPurchaseOrdersImpl(this.index, this.warehouseId);

  @override
  final int index;
  @override
  final String warehouseId;

  @override
  String toString() {
    return 'CreateRequestEvent.fetRequestPurchaseOrders(index: $index, warehouseId: $warehouseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRequestPurchaseOrdersImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.warehouseId, warehouseId) ||
                other.warehouseId == warehouseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, warehouseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchRequestPurchaseOrdersImplCopyWith<_$FetchRequestPurchaseOrdersImpl>
      get copyWith => __$$FetchRequestPurchaseOrdersImplCopyWithImpl<
          _$FetchRequestPurchaseOrdersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index, String warehouseId)
        fetRequestPurchaseOrders,
    required TResult Function(List<RequestPurchaseOrders> list,
            RequestPurchaseOrders purchaseOrder)
        selectPurchaseOrder,
    required TResult Function(int title, String warehouseId,
            String relatedInformation, int phase, String description)
        createRequest,
  }) {
    return fetRequestPurchaseOrders(index, warehouseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index, String warehouseId)? fetRequestPurchaseOrders,
    TResult? Function(List<RequestPurchaseOrders> list,
            RequestPurchaseOrders purchaseOrder)?
        selectPurchaseOrder,
    TResult? Function(int title, String warehouseId, String relatedInformation,
            int phase, String description)?
        createRequest,
  }) {
    return fetRequestPurchaseOrders?.call(index, warehouseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index, String warehouseId)? fetRequestPurchaseOrders,
    TResult Function(List<RequestPurchaseOrders> list,
            RequestPurchaseOrders purchaseOrder)?
        selectPurchaseOrder,
    TResult Function(int title, String warehouseId, String relatedInformation,
            int phase, String description)?
        createRequest,
    required TResult orElse(),
  }) {
    if (fetRequestPurchaseOrders != null) {
      return fetRequestPurchaseOrders(index, warehouseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchRequestPurchaseOrders value)
        fetRequestPurchaseOrders,
    required TResult Function(_SelectPurchaseOrder value) selectPurchaseOrder,
    required TResult Function(_CreateRequest value) createRequest,
  }) {
    return fetRequestPurchaseOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchRequestPurchaseOrders value)?
        fetRequestPurchaseOrders,
    TResult? Function(_SelectPurchaseOrder value)? selectPurchaseOrder,
    TResult? Function(_CreateRequest value)? createRequest,
  }) {
    return fetRequestPurchaseOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchRequestPurchaseOrders value)?
        fetRequestPurchaseOrders,
    TResult Function(_SelectPurchaseOrder value)? selectPurchaseOrder,
    TResult Function(_CreateRequest value)? createRequest,
    required TResult orElse(),
  }) {
    if (fetRequestPurchaseOrders != null) {
      return fetRequestPurchaseOrders(this);
    }
    return orElse();
  }
}

abstract class _FetchRequestPurchaseOrders implements CreateRequestEvent {
  const factory _FetchRequestPurchaseOrders(
          final int index, final String warehouseId) =
      _$FetchRequestPurchaseOrdersImpl;

  int get index;
  String get warehouseId;
  @JsonKey(ignore: true)
  _$$FetchRequestPurchaseOrdersImplCopyWith<_$FetchRequestPurchaseOrdersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectPurchaseOrderImplCopyWith<$Res> {
  factory _$$SelectPurchaseOrderImplCopyWith(_$SelectPurchaseOrderImpl value,
          $Res Function(_$SelectPurchaseOrderImpl) then) =
      __$$SelectPurchaseOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<RequestPurchaseOrders> list, RequestPurchaseOrders purchaseOrder});

  $RequestPurchaseOrdersCopyWith<$Res> get purchaseOrder;
}

/// @nodoc
class __$$SelectPurchaseOrderImplCopyWithImpl<$Res>
    extends _$CreateRequestEventCopyWithImpl<$Res, _$SelectPurchaseOrderImpl>
    implements _$$SelectPurchaseOrderImplCopyWith<$Res> {
  __$$SelectPurchaseOrderImplCopyWithImpl(_$SelectPurchaseOrderImpl _value,
      $Res Function(_$SelectPurchaseOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? purchaseOrder = null,
  }) {
    return _then(_$SelectPurchaseOrderImpl(
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RequestPurchaseOrders>,
      null == purchaseOrder
          ? _value.purchaseOrder
          : purchaseOrder // ignore: cast_nullable_to_non_nullable
              as RequestPurchaseOrders,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestPurchaseOrdersCopyWith<$Res> get purchaseOrder {
    return $RequestPurchaseOrdersCopyWith<$Res>(_value.purchaseOrder, (value) {
      return _then(_value.copyWith(purchaseOrder: value));
    });
  }
}

/// @nodoc

class _$SelectPurchaseOrderImpl implements _SelectPurchaseOrder {
  const _$SelectPurchaseOrderImpl(
      final List<RequestPurchaseOrders> list, this.purchaseOrder)
      : _list = list;

  final List<RequestPurchaseOrders> _list;
  @override
  List<RequestPurchaseOrders> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final RequestPurchaseOrders purchaseOrder;

  @override
  String toString() {
    return 'CreateRequestEvent.selectPurchaseOrder(list: $list, purchaseOrder: $purchaseOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectPurchaseOrderImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.purchaseOrder, purchaseOrder) ||
                other.purchaseOrder == purchaseOrder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), purchaseOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectPurchaseOrderImplCopyWith<_$SelectPurchaseOrderImpl> get copyWith =>
      __$$SelectPurchaseOrderImplCopyWithImpl<_$SelectPurchaseOrderImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index, String warehouseId)
        fetRequestPurchaseOrders,
    required TResult Function(List<RequestPurchaseOrders> list,
            RequestPurchaseOrders purchaseOrder)
        selectPurchaseOrder,
    required TResult Function(int title, String warehouseId,
            String relatedInformation, int phase, String description)
        createRequest,
  }) {
    return selectPurchaseOrder(list, purchaseOrder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index, String warehouseId)? fetRequestPurchaseOrders,
    TResult? Function(List<RequestPurchaseOrders> list,
            RequestPurchaseOrders purchaseOrder)?
        selectPurchaseOrder,
    TResult? Function(int title, String warehouseId, String relatedInformation,
            int phase, String description)?
        createRequest,
  }) {
    return selectPurchaseOrder?.call(list, purchaseOrder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index, String warehouseId)? fetRequestPurchaseOrders,
    TResult Function(List<RequestPurchaseOrders> list,
            RequestPurchaseOrders purchaseOrder)?
        selectPurchaseOrder,
    TResult Function(int title, String warehouseId, String relatedInformation,
            int phase, String description)?
        createRequest,
    required TResult orElse(),
  }) {
    if (selectPurchaseOrder != null) {
      return selectPurchaseOrder(list, purchaseOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchRequestPurchaseOrders value)
        fetRequestPurchaseOrders,
    required TResult Function(_SelectPurchaseOrder value) selectPurchaseOrder,
    required TResult Function(_CreateRequest value) createRequest,
  }) {
    return selectPurchaseOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchRequestPurchaseOrders value)?
        fetRequestPurchaseOrders,
    TResult? Function(_SelectPurchaseOrder value)? selectPurchaseOrder,
    TResult? Function(_CreateRequest value)? createRequest,
  }) {
    return selectPurchaseOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchRequestPurchaseOrders value)?
        fetRequestPurchaseOrders,
    TResult Function(_SelectPurchaseOrder value)? selectPurchaseOrder,
    TResult Function(_CreateRequest value)? createRequest,
    required TResult orElse(),
  }) {
    if (selectPurchaseOrder != null) {
      return selectPurchaseOrder(this);
    }
    return orElse();
  }
}

abstract class _SelectPurchaseOrder implements CreateRequestEvent {
  const factory _SelectPurchaseOrder(final List<RequestPurchaseOrders> list,
      final RequestPurchaseOrders purchaseOrder) = _$SelectPurchaseOrderImpl;

  List<RequestPurchaseOrders> get list;
  RequestPurchaseOrders get purchaseOrder;
  @JsonKey(ignore: true)
  _$$SelectPurchaseOrderImplCopyWith<_$SelectPurchaseOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateRequestImplCopyWith<$Res> {
  factory _$$CreateRequestImplCopyWith(
          _$CreateRequestImpl value, $Res Function(_$CreateRequestImpl) then) =
      __$$CreateRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int title,
      String warehouseId,
      String relatedInformation,
      int phase,
      String description});
}

/// @nodoc
class __$$CreateRequestImplCopyWithImpl<$Res>
    extends _$CreateRequestEventCopyWithImpl<$Res, _$CreateRequestImpl>
    implements _$$CreateRequestImplCopyWith<$Res> {
  __$$CreateRequestImplCopyWithImpl(
      _$CreateRequestImpl _value, $Res Function(_$CreateRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? warehouseId = null,
    Object? relatedInformation = null,
    Object? phase = null,
    Object? description = null,
  }) {
    return _then(_$CreateRequestImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as int,
      null == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as String,
      null == relatedInformation
          ? _value.relatedInformation
          : relatedInformation // ignore: cast_nullable_to_non_nullable
              as String,
      null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as int,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateRequestImpl implements _CreateRequest {
  const _$CreateRequestImpl(this.title, this.warehouseId,
      this.relatedInformation, this.phase, this.description);

  @override
  final int title;
  @override
  final String warehouseId;
  @override
  final String relatedInformation;
  @override
  final int phase;
  @override
  final String description;

  @override
  String toString() {
    return 'CreateRequestEvent.createRequest(title: $title, warehouseId: $warehouseId, relatedInformation: $relatedInformation, phase: $phase, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.warehouseId, warehouseId) ||
                other.warehouseId == warehouseId) &&
            (identical(other.relatedInformation, relatedInformation) ||
                other.relatedInformation == relatedInformation) &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, warehouseId, relatedInformation, phase, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRequestImplCopyWith<_$CreateRequestImpl> get copyWith =>
      __$$CreateRequestImplCopyWithImpl<_$CreateRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index, String warehouseId)
        fetRequestPurchaseOrders,
    required TResult Function(List<RequestPurchaseOrders> list,
            RequestPurchaseOrders purchaseOrder)
        selectPurchaseOrder,
    required TResult Function(int title, String warehouseId,
            String relatedInformation, int phase, String description)
        createRequest,
  }) {
    return createRequest(
        title, warehouseId, relatedInformation, phase, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index, String warehouseId)? fetRequestPurchaseOrders,
    TResult? Function(List<RequestPurchaseOrders> list,
            RequestPurchaseOrders purchaseOrder)?
        selectPurchaseOrder,
    TResult? Function(int title, String warehouseId, String relatedInformation,
            int phase, String description)?
        createRequest,
  }) {
    return createRequest?.call(
        title, warehouseId, relatedInformation, phase, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index, String warehouseId)? fetRequestPurchaseOrders,
    TResult Function(List<RequestPurchaseOrders> list,
            RequestPurchaseOrders purchaseOrder)?
        selectPurchaseOrder,
    TResult Function(int title, String warehouseId, String relatedInformation,
            int phase, String description)?
        createRequest,
    required TResult orElse(),
  }) {
    if (createRequest != null) {
      return createRequest(
          title, warehouseId, relatedInformation, phase, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchRequestPurchaseOrders value)
        fetRequestPurchaseOrders,
    required TResult Function(_SelectPurchaseOrder value) selectPurchaseOrder,
    required TResult Function(_CreateRequest value) createRequest,
  }) {
    return createRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchRequestPurchaseOrders value)?
        fetRequestPurchaseOrders,
    TResult? Function(_SelectPurchaseOrder value)? selectPurchaseOrder,
    TResult? Function(_CreateRequest value)? createRequest,
  }) {
    return createRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchRequestPurchaseOrders value)?
        fetRequestPurchaseOrders,
    TResult Function(_SelectPurchaseOrder value)? selectPurchaseOrder,
    TResult Function(_CreateRequest value)? createRequest,
    required TResult orElse(),
  }) {
    if (createRequest != null) {
      return createRequest(this);
    }
    return orElse();
  }
}

abstract class _CreateRequest implements CreateRequestEvent {
  const factory _CreateRequest(
      final int title,
      final String warehouseId,
      final String relatedInformation,
      final int phase,
      final String description) = _$CreateRequestImpl;

  int get title;
  String get warehouseId;
  String get relatedInformation;
  int get phase;
  String get description;
  @JsonKey(ignore: true)
  _$$CreateRequestImplCopyWith<_$CreateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateRequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) empty,
    required TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)
        puchaseOrdersLoaded,
    required TResult Function() puchaseOrdersLoading,
    required TResult Function(String? error) puchaseOrdersError,
    required TResult Function(String? message) purchaseOrderEmpty,
    required TResult Function(RequestPurchaseOrders selectedPurchaseOrder)
        selectedPurchaseOrder,
    required TResult Function() createRequestLoading,
    required TResult Function() createRequestSuccess,
    required TResult Function(String? error) createRequestFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? empty,
    TResult? Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult? Function()? puchaseOrdersLoading,
    TResult? Function(String? error)? puchaseOrdersError,
    TResult? Function(String? message)? purchaseOrderEmpty,
    TResult? Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult? Function()? createRequestLoading,
    TResult? Function()? createRequestSuccess,
    TResult? Function(String? error)? createRequestFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? empty,
    TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult Function()? puchaseOrdersLoading,
    TResult Function(String? error)? puchaseOrdersError,
    TResult Function(String? message)? purchaseOrderEmpty,
    TResult Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult Function()? createRequestLoading,
    TResult Function()? createRequestSuccess,
    TResult Function(String? error)? createRequestFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_PurchaseOrdersLoaded value) puchaseOrdersLoaded,
    required TResult Function(_PurchaseOrdersLoading value)
        puchaseOrdersLoading,
    required TResult Function(_PurchaseOrdersError value) puchaseOrdersError,
    required TResult Function(_PurchaseOrderEmpty value) purchaseOrderEmpty,
    required TResult Function(_SelectedPurchaseOrder value)
        selectedPurchaseOrder,
    required TResult Function(_CreateRequestLoading value) createRequestLoading,
    required TResult Function(_CreateRequestSuccess value) createRequestSuccess,
    required TResult Function(_CreateRequestFailure value) createRequestFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult? Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult? Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult? Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult? Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult? Function(_CreateRequestLoading value)? createRequestLoading,
    TResult? Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult? Function(_CreateRequestFailure value)? createRequestFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult Function(_CreateRequestLoading value)? createRequestLoading,
    TResult Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult Function(_CreateRequestFailure value)? createRequestFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRequestStateCopyWith<$Res> {
  factory $CreateRequestStateCopyWith(
          CreateRequestState value, $Res Function(CreateRequestState) then) =
      _$CreateRequestStateCopyWithImpl<$Res, CreateRequestState>;
}

/// @nodoc
class _$CreateRequestStateCopyWithImpl<$Res, $Val extends CreateRequestState>
    implements $CreateRequestStateCopyWith<$Res> {
  _$CreateRequestStateCopyWithImpl(this._value, this._then);

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
    extends _$CreateRequestStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CreateRequestState.initial()';
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
    required TResult Function(String? message) empty,
    required TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)
        puchaseOrdersLoaded,
    required TResult Function() puchaseOrdersLoading,
    required TResult Function(String? error) puchaseOrdersError,
    required TResult Function(String? message) purchaseOrderEmpty,
    required TResult Function(RequestPurchaseOrders selectedPurchaseOrder)
        selectedPurchaseOrder,
    required TResult Function() createRequestLoading,
    required TResult Function() createRequestSuccess,
    required TResult Function(String? error) createRequestFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? empty,
    TResult? Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult? Function()? puchaseOrdersLoading,
    TResult? Function(String? error)? puchaseOrdersError,
    TResult? Function(String? message)? purchaseOrderEmpty,
    TResult? Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult? Function()? createRequestLoading,
    TResult? Function()? createRequestSuccess,
    TResult? Function(String? error)? createRequestFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? empty,
    TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult Function()? puchaseOrdersLoading,
    TResult Function(String? error)? puchaseOrdersError,
    TResult Function(String? message)? purchaseOrderEmpty,
    TResult Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult Function()? createRequestLoading,
    TResult Function()? createRequestSuccess,
    TResult Function(String? error)? createRequestFailure,
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_PurchaseOrdersLoaded value) puchaseOrdersLoaded,
    required TResult Function(_PurchaseOrdersLoading value)
        puchaseOrdersLoading,
    required TResult Function(_PurchaseOrdersError value) puchaseOrdersError,
    required TResult Function(_PurchaseOrderEmpty value) purchaseOrderEmpty,
    required TResult Function(_SelectedPurchaseOrder value)
        selectedPurchaseOrder,
    required TResult Function(_CreateRequestLoading value) createRequestLoading,
    required TResult Function(_CreateRequestSuccess value) createRequestSuccess,
    required TResult Function(_CreateRequestFailure value) createRequestFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult? Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult? Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult? Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult? Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult? Function(_CreateRequestLoading value)? createRequestLoading,
    TResult? Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult? Function(_CreateRequestFailure value)? createRequestFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult Function(_CreateRequestLoading value)? createRequestLoading,
    TResult Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult Function(_CreateRequestFailure value)? createRequestFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateRequestState {
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
    extends _$CreateRequestStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'CreateRequestState.loading()';
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
    required TResult Function(String? message) empty,
    required TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)
        puchaseOrdersLoaded,
    required TResult Function() puchaseOrdersLoading,
    required TResult Function(String? error) puchaseOrdersError,
    required TResult Function(String? message) purchaseOrderEmpty,
    required TResult Function(RequestPurchaseOrders selectedPurchaseOrder)
        selectedPurchaseOrder,
    required TResult Function() createRequestLoading,
    required TResult Function() createRequestSuccess,
    required TResult Function(String? error) createRequestFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? empty,
    TResult? Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult? Function()? puchaseOrdersLoading,
    TResult? Function(String? error)? puchaseOrdersError,
    TResult? Function(String? message)? purchaseOrderEmpty,
    TResult? Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult? Function()? createRequestLoading,
    TResult? Function()? createRequestSuccess,
    TResult? Function(String? error)? createRequestFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? empty,
    TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult Function()? puchaseOrdersLoading,
    TResult Function(String? error)? puchaseOrdersError,
    TResult Function(String? message)? purchaseOrderEmpty,
    TResult Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult Function()? createRequestLoading,
    TResult Function()? createRequestSuccess,
    TResult Function(String? error)? createRequestFailure,
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_PurchaseOrdersLoaded value) puchaseOrdersLoaded,
    required TResult Function(_PurchaseOrdersLoading value)
        puchaseOrdersLoading,
    required TResult Function(_PurchaseOrdersError value) puchaseOrdersError,
    required TResult Function(_PurchaseOrderEmpty value) purchaseOrderEmpty,
    required TResult Function(_SelectedPurchaseOrder value)
        selectedPurchaseOrder,
    required TResult Function(_CreateRequestLoading value) createRequestLoading,
    required TResult Function(_CreateRequestSuccess value) createRequestSuccess,
    required TResult Function(_CreateRequestFailure value) createRequestFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult? Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult? Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult? Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult? Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult? Function(_CreateRequestLoading value)? createRequestLoading,
    TResult? Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult? Function(_CreateRequestFailure value)? createRequestFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult Function(_CreateRequestLoading value)? createRequestLoading,
    TResult Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult Function(_CreateRequestFailure value)? createRequestFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CreateRequestState {
  const factory _Loading() = _$LoadingImpl;
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
    extends _$CreateRequestStateCopyWithImpl<$Res, _$EmptyImpl>
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
    return 'CreateRequestState.empty(message: $message)';
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
    required TResult Function(String? message) empty,
    required TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)
        puchaseOrdersLoaded,
    required TResult Function() puchaseOrdersLoading,
    required TResult Function(String? error) puchaseOrdersError,
    required TResult Function(String? message) purchaseOrderEmpty,
    required TResult Function(RequestPurchaseOrders selectedPurchaseOrder)
        selectedPurchaseOrder,
    required TResult Function() createRequestLoading,
    required TResult Function() createRequestSuccess,
    required TResult Function(String? error) createRequestFailure,
  }) {
    return empty(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? empty,
    TResult? Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult? Function()? puchaseOrdersLoading,
    TResult? Function(String? error)? puchaseOrdersError,
    TResult? Function(String? message)? purchaseOrderEmpty,
    TResult? Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult? Function()? createRequestLoading,
    TResult? Function()? createRequestSuccess,
    TResult? Function(String? error)? createRequestFailure,
  }) {
    return empty?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? empty,
    TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult Function()? puchaseOrdersLoading,
    TResult Function(String? error)? puchaseOrdersError,
    TResult Function(String? message)? purchaseOrderEmpty,
    TResult Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult Function()? createRequestLoading,
    TResult Function()? createRequestSuccess,
    TResult Function(String? error)? createRequestFailure,
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_PurchaseOrdersLoaded value) puchaseOrdersLoaded,
    required TResult Function(_PurchaseOrdersLoading value)
        puchaseOrdersLoading,
    required TResult Function(_PurchaseOrdersError value) puchaseOrdersError,
    required TResult Function(_PurchaseOrderEmpty value) purchaseOrderEmpty,
    required TResult Function(_SelectedPurchaseOrder value)
        selectedPurchaseOrder,
    required TResult Function(_CreateRequestLoading value) createRequestLoading,
    required TResult Function(_CreateRequestSuccess value) createRequestSuccess,
    required TResult Function(_CreateRequestFailure value) createRequestFailure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult? Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult? Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult? Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult? Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult? Function(_CreateRequestLoading value)? createRequestLoading,
    TResult? Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult? Function(_CreateRequestFailure value)? createRequestFailure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult Function(_CreateRequestLoading value)? createRequestLoading,
    TResult Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult Function(_CreateRequestFailure value)? createRequestFailure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements CreateRequestState {
  const factory _Empty(final String? message) = _$EmptyImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PurchaseOrdersLoadedImplCopyWith<$Res> {
  factory _$$PurchaseOrdersLoadedImplCopyWith(_$PurchaseOrdersLoadedImpl value,
          $Res Function(_$PurchaseOrdersLoadedImpl) then) =
      __$$PurchaseOrdersLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<RequestPurchaseOrders> purchaseOrders, List<String>? phaseOptions});
}

/// @nodoc
class __$$PurchaseOrdersLoadedImplCopyWithImpl<$Res>
    extends _$CreateRequestStateCopyWithImpl<$Res, _$PurchaseOrdersLoadedImpl>
    implements _$$PurchaseOrdersLoadedImplCopyWith<$Res> {
  __$$PurchaseOrdersLoadedImplCopyWithImpl(_$PurchaseOrdersLoadedImpl _value,
      $Res Function(_$PurchaseOrdersLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrders = null,
    Object? phaseOptions = freezed,
  }) {
    return _then(_$PurchaseOrdersLoadedImpl(
      null == purchaseOrders
          ? _value._purchaseOrders
          : purchaseOrders // ignore: cast_nullable_to_non_nullable
              as List<RequestPurchaseOrders>,
      phaseOptions: freezed == phaseOptions
          ? _value._phaseOptions
          : phaseOptions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$PurchaseOrdersLoadedImpl implements _PurchaseOrdersLoaded {
  const _$PurchaseOrdersLoadedImpl(
      final List<RequestPurchaseOrders> purchaseOrders,
      {final List<String>? phaseOptions})
      : _purchaseOrders = purchaseOrders,
        _phaseOptions = phaseOptions;

  final List<RequestPurchaseOrders> _purchaseOrders;
  @override
  List<RequestPurchaseOrders> get purchaseOrders {
    if (_purchaseOrders is EqualUnmodifiableListView) return _purchaseOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_purchaseOrders);
  }

  final List<String>? _phaseOptions;
  @override
  List<String>? get phaseOptions {
    final value = _phaseOptions;
    if (value == null) return null;
    if (_phaseOptions is EqualUnmodifiableListView) return _phaseOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreateRequestState.puchaseOrdersLoaded(purchaseOrders: $purchaseOrders, phaseOptions: $phaseOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseOrdersLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._purchaseOrders, _purchaseOrders) &&
            const DeepCollectionEquality()
                .equals(other._phaseOptions, _phaseOptions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_purchaseOrders),
      const DeepCollectionEquality().hash(_phaseOptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseOrdersLoadedImplCopyWith<_$PurchaseOrdersLoadedImpl>
      get copyWith =>
          __$$PurchaseOrdersLoadedImplCopyWithImpl<_$PurchaseOrdersLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) empty,
    required TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)
        puchaseOrdersLoaded,
    required TResult Function() puchaseOrdersLoading,
    required TResult Function(String? error) puchaseOrdersError,
    required TResult Function(String? message) purchaseOrderEmpty,
    required TResult Function(RequestPurchaseOrders selectedPurchaseOrder)
        selectedPurchaseOrder,
    required TResult Function() createRequestLoading,
    required TResult Function() createRequestSuccess,
    required TResult Function(String? error) createRequestFailure,
  }) {
    return puchaseOrdersLoaded(purchaseOrders, phaseOptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? empty,
    TResult? Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult? Function()? puchaseOrdersLoading,
    TResult? Function(String? error)? puchaseOrdersError,
    TResult? Function(String? message)? purchaseOrderEmpty,
    TResult? Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult? Function()? createRequestLoading,
    TResult? Function()? createRequestSuccess,
    TResult? Function(String? error)? createRequestFailure,
  }) {
    return puchaseOrdersLoaded?.call(purchaseOrders, phaseOptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? empty,
    TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult Function()? puchaseOrdersLoading,
    TResult Function(String? error)? puchaseOrdersError,
    TResult Function(String? message)? purchaseOrderEmpty,
    TResult Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult Function()? createRequestLoading,
    TResult Function()? createRequestSuccess,
    TResult Function(String? error)? createRequestFailure,
    required TResult orElse(),
  }) {
    if (puchaseOrdersLoaded != null) {
      return puchaseOrdersLoaded(purchaseOrders, phaseOptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_PurchaseOrdersLoaded value) puchaseOrdersLoaded,
    required TResult Function(_PurchaseOrdersLoading value)
        puchaseOrdersLoading,
    required TResult Function(_PurchaseOrdersError value) puchaseOrdersError,
    required TResult Function(_PurchaseOrderEmpty value) purchaseOrderEmpty,
    required TResult Function(_SelectedPurchaseOrder value)
        selectedPurchaseOrder,
    required TResult Function(_CreateRequestLoading value) createRequestLoading,
    required TResult Function(_CreateRequestSuccess value) createRequestSuccess,
    required TResult Function(_CreateRequestFailure value) createRequestFailure,
  }) {
    return puchaseOrdersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult? Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult? Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult? Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult? Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult? Function(_CreateRequestLoading value)? createRequestLoading,
    TResult? Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult? Function(_CreateRequestFailure value)? createRequestFailure,
  }) {
    return puchaseOrdersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult Function(_CreateRequestLoading value)? createRequestLoading,
    TResult Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult Function(_CreateRequestFailure value)? createRequestFailure,
    required TResult orElse(),
  }) {
    if (puchaseOrdersLoaded != null) {
      return puchaseOrdersLoaded(this);
    }
    return orElse();
  }
}

abstract class _PurchaseOrdersLoaded implements CreateRequestState {
  const factory _PurchaseOrdersLoaded(
      final List<RequestPurchaseOrders> purchaseOrders,
      {final List<String>? phaseOptions}) = _$PurchaseOrdersLoadedImpl;

  List<RequestPurchaseOrders> get purchaseOrders;
  List<String>? get phaseOptions;
  @JsonKey(ignore: true)
  _$$PurchaseOrdersLoadedImplCopyWith<_$PurchaseOrdersLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PurchaseOrdersLoadingImplCopyWith<$Res> {
  factory _$$PurchaseOrdersLoadingImplCopyWith(
          _$PurchaseOrdersLoadingImpl value,
          $Res Function(_$PurchaseOrdersLoadingImpl) then) =
      __$$PurchaseOrdersLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PurchaseOrdersLoadingImplCopyWithImpl<$Res>
    extends _$CreateRequestStateCopyWithImpl<$Res, _$PurchaseOrdersLoadingImpl>
    implements _$$PurchaseOrdersLoadingImplCopyWith<$Res> {
  __$$PurchaseOrdersLoadingImplCopyWithImpl(_$PurchaseOrdersLoadingImpl _value,
      $Res Function(_$PurchaseOrdersLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PurchaseOrdersLoadingImpl implements _PurchaseOrdersLoading {
  const _$PurchaseOrdersLoadingImpl();

  @override
  String toString() {
    return 'CreateRequestState.puchaseOrdersLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseOrdersLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) empty,
    required TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)
        puchaseOrdersLoaded,
    required TResult Function() puchaseOrdersLoading,
    required TResult Function(String? error) puchaseOrdersError,
    required TResult Function(String? message) purchaseOrderEmpty,
    required TResult Function(RequestPurchaseOrders selectedPurchaseOrder)
        selectedPurchaseOrder,
    required TResult Function() createRequestLoading,
    required TResult Function() createRequestSuccess,
    required TResult Function(String? error) createRequestFailure,
  }) {
    return puchaseOrdersLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? empty,
    TResult? Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult? Function()? puchaseOrdersLoading,
    TResult? Function(String? error)? puchaseOrdersError,
    TResult? Function(String? message)? purchaseOrderEmpty,
    TResult? Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult? Function()? createRequestLoading,
    TResult? Function()? createRequestSuccess,
    TResult? Function(String? error)? createRequestFailure,
  }) {
    return puchaseOrdersLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? empty,
    TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult Function()? puchaseOrdersLoading,
    TResult Function(String? error)? puchaseOrdersError,
    TResult Function(String? message)? purchaseOrderEmpty,
    TResult Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult Function()? createRequestLoading,
    TResult Function()? createRequestSuccess,
    TResult Function(String? error)? createRequestFailure,
    required TResult orElse(),
  }) {
    if (puchaseOrdersLoading != null) {
      return puchaseOrdersLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_PurchaseOrdersLoaded value) puchaseOrdersLoaded,
    required TResult Function(_PurchaseOrdersLoading value)
        puchaseOrdersLoading,
    required TResult Function(_PurchaseOrdersError value) puchaseOrdersError,
    required TResult Function(_PurchaseOrderEmpty value) purchaseOrderEmpty,
    required TResult Function(_SelectedPurchaseOrder value)
        selectedPurchaseOrder,
    required TResult Function(_CreateRequestLoading value) createRequestLoading,
    required TResult Function(_CreateRequestSuccess value) createRequestSuccess,
    required TResult Function(_CreateRequestFailure value) createRequestFailure,
  }) {
    return puchaseOrdersLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult? Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult? Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult? Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult? Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult? Function(_CreateRequestLoading value)? createRequestLoading,
    TResult? Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult? Function(_CreateRequestFailure value)? createRequestFailure,
  }) {
    return puchaseOrdersLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult Function(_CreateRequestLoading value)? createRequestLoading,
    TResult Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult Function(_CreateRequestFailure value)? createRequestFailure,
    required TResult orElse(),
  }) {
    if (puchaseOrdersLoading != null) {
      return puchaseOrdersLoading(this);
    }
    return orElse();
  }
}

abstract class _PurchaseOrdersLoading implements CreateRequestState {
  const factory _PurchaseOrdersLoading() = _$PurchaseOrdersLoadingImpl;
}

/// @nodoc
abstract class _$$PurchaseOrdersErrorImplCopyWith<$Res> {
  factory _$$PurchaseOrdersErrorImplCopyWith(_$PurchaseOrdersErrorImpl value,
          $Res Function(_$PurchaseOrdersErrorImpl) then) =
      __$$PurchaseOrdersErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$PurchaseOrdersErrorImplCopyWithImpl<$Res>
    extends _$CreateRequestStateCopyWithImpl<$Res, _$PurchaseOrdersErrorImpl>
    implements _$$PurchaseOrdersErrorImplCopyWith<$Res> {
  __$$PurchaseOrdersErrorImplCopyWithImpl(_$PurchaseOrdersErrorImpl _value,
      $Res Function(_$PurchaseOrdersErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$PurchaseOrdersErrorImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PurchaseOrdersErrorImpl implements _PurchaseOrdersError {
  const _$PurchaseOrdersErrorImpl(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'CreateRequestState.puchaseOrdersError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseOrdersErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseOrdersErrorImplCopyWith<_$PurchaseOrdersErrorImpl> get copyWith =>
      __$$PurchaseOrdersErrorImplCopyWithImpl<_$PurchaseOrdersErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) empty,
    required TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)
        puchaseOrdersLoaded,
    required TResult Function() puchaseOrdersLoading,
    required TResult Function(String? error) puchaseOrdersError,
    required TResult Function(String? message) purchaseOrderEmpty,
    required TResult Function(RequestPurchaseOrders selectedPurchaseOrder)
        selectedPurchaseOrder,
    required TResult Function() createRequestLoading,
    required TResult Function() createRequestSuccess,
    required TResult Function(String? error) createRequestFailure,
  }) {
    return puchaseOrdersError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? empty,
    TResult? Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult? Function()? puchaseOrdersLoading,
    TResult? Function(String? error)? puchaseOrdersError,
    TResult? Function(String? message)? purchaseOrderEmpty,
    TResult? Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult? Function()? createRequestLoading,
    TResult? Function()? createRequestSuccess,
    TResult? Function(String? error)? createRequestFailure,
  }) {
    return puchaseOrdersError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? empty,
    TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult Function()? puchaseOrdersLoading,
    TResult Function(String? error)? puchaseOrdersError,
    TResult Function(String? message)? purchaseOrderEmpty,
    TResult Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult Function()? createRequestLoading,
    TResult Function()? createRequestSuccess,
    TResult Function(String? error)? createRequestFailure,
    required TResult orElse(),
  }) {
    if (puchaseOrdersError != null) {
      return puchaseOrdersError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_PurchaseOrdersLoaded value) puchaseOrdersLoaded,
    required TResult Function(_PurchaseOrdersLoading value)
        puchaseOrdersLoading,
    required TResult Function(_PurchaseOrdersError value) puchaseOrdersError,
    required TResult Function(_PurchaseOrderEmpty value) purchaseOrderEmpty,
    required TResult Function(_SelectedPurchaseOrder value)
        selectedPurchaseOrder,
    required TResult Function(_CreateRequestLoading value) createRequestLoading,
    required TResult Function(_CreateRequestSuccess value) createRequestSuccess,
    required TResult Function(_CreateRequestFailure value) createRequestFailure,
  }) {
    return puchaseOrdersError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult? Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult? Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult? Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult? Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult? Function(_CreateRequestLoading value)? createRequestLoading,
    TResult? Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult? Function(_CreateRequestFailure value)? createRequestFailure,
  }) {
    return puchaseOrdersError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult Function(_CreateRequestLoading value)? createRequestLoading,
    TResult Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult Function(_CreateRequestFailure value)? createRequestFailure,
    required TResult orElse(),
  }) {
    if (puchaseOrdersError != null) {
      return puchaseOrdersError(this);
    }
    return orElse();
  }
}

abstract class _PurchaseOrdersError implements CreateRequestState {
  const factory _PurchaseOrdersError(final String? error) =
      _$PurchaseOrdersErrorImpl;

  String? get error;
  @JsonKey(ignore: true)
  _$$PurchaseOrdersErrorImplCopyWith<_$PurchaseOrdersErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PurchaseOrderEmptyImplCopyWith<$Res> {
  factory _$$PurchaseOrderEmptyImplCopyWith(_$PurchaseOrderEmptyImpl value,
          $Res Function(_$PurchaseOrderEmptyImpl) then) =
      __$$PurchaseOrderEmptyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$PurchaseOrderEmptyImplCopyWithImpl<$Res>
    extends _$CreateRequestStateCopyWithImpl<$Res, _$PurchaseOrderEmptyImpl>
    implements _$$PurchaseOrderEmptyImplCopyWith<$Res> {
  __$$PurchaseOrderEmptyImplCopyWithImpl(_$PurchaseOrderEmptyImpl _value,
      $Res Function(_$PurchaseOrderEmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$PurchaseOrderEmptyImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PurchaseOrderEmptyImpl implements _PurchaseOrderEmpty {
  const _$PurchaseOrderEmptyImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'CreateRequestState.purchaseOrderEmpty(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseOrderEmptyImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseOrderEmptyImplCopyWith<_$PurchaseOrderEmptyImpl> get copyWith =>
      __$$PurchaseOrderEmptyImplCopyWithImpl<_$PurchaseOrderEmptyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) empty,
    required TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)
        puchaseOrdersLoaded,
    required TResult Function() puchaseOrdersLoading,
    required TResult Function(String? error) puchaseOrdersError,
    required TResult Function(String? message) purchaseOrderEmpty,
    required TResult Function(RequestPurchaseOrders selectedPurchaseOrder)
        selectedPurchaseOrder,
    required TResult Function() createRequestLoading,
    required TResult Function() createRequestSuccess,
    required TResult Function(String? error) createRequestFailure,
  }) {
    return purchaseOrderEmpty(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? empty,
    TResult? Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult? Function()? puchaseOrdersLoading,
    TResult? Function(String? error)? puchaseOrdersError,
    TResult? Function(String? message)? purchaseOrderEmpty,
    TResult? Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult? Function()? createRequestLoading,
    TResult? Function()? createRequestSuccess,
    TResult? Function(String? error)? createRequestFailure,
  }) {
    return purchaseOrderEmpty?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? empty,
    TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult Function()? puchaseOrdersLoading,
    TResult Function(String? error)? puchaseOrdersError,
    TResult Function(String? message)? purchaseOrderEmpty,
    TResult Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult Function()? createRequestLoading,
    TResult Function()? createRequestSuccess,
    TResult Function(String? error)? createRequestFailure,
    required TResult orElse(),
  }) {
    if (purchaseOrderEmpty != null) {
      return purchaseOrderEmpty(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_PurchaseOrdersLoaded value) puchaseOrdersLoaded,
    required TResult Function(_PurchaseOrdersLoading value)
        puchaseOrdersLoading,
    required TResult Function(_PurchaseOrdersError value) puchaseOrdersError,
    required TResult Function(_PurchaseOrderEmpty value) purchaseOrderEmpty,
    required TResult Function(_SelectedPurchaseOrder value)
        selectedPurchaseOrder,
    required TResult Function(_CreateRequestLoading value) createRequestLoading,
    required TResult Function(_CreateRequestSuccess value) createRequestSuccess,
    required TResult Function(_CreateRequestFailure value) createRequestFailure,
  }) {
    return purchaseOrderEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult? Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult? Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult? Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult? Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult? Function(_CreateRequestLoading value)? createRequestLoading,
    TResult? Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult? Function(_CreateRequestFailure value)? createRequestFailure,
  }) {
    return purchaseOrderEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult Function(_CreateRequestLoading value)? createRequestLoading,
    TResult Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult Function(_CreateRequestFailure value)? createRequestFailure,
    required TResult orElse(),
  }) {
    if (purchaseOrderEmpty != null) {
      return purchaseOrderEmpty(this);
    }
    return orElse();
  }
}

abstract class _PurchaseOrderEmpty implements CreateRequestState {
  const factory _PurchaseOrderEmpty(final String? message) =
      _$PurchaseOrderEmptyImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$PurchaseOrderEmptyImplCopyWith<_$PurchaseOrderEmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedPurchaseOrderImplCopyWith<$Res> {
  factory _$$SelectedPurchaseOrderImplCopyWith(
          _$SelectedPurchaseOrderImpl value,
          $Res Function(_$SelectedPurchaseOrderImpl) then) =
      __$$SelectedPurchaseOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RequestPurchaseOrders selectedPurchaseOrder});

  $RequestPurchaseOrdersCopyWith<$Res> get selectedPurchaseOrder;
}

/// @nodoc
class __$$SelectedPurchaseOrderImplCopyWithImpl<$Res>
    extends _$CreateRequestStateCopyWithImpl<$Res, _$SelectedPurchaseOrderImpl>
    implements _$$SelectedPurchaseOrderImplCopyWith<$Res> {
  __$$SelectedPurchaseOrderImplCopyWithImpl(_$SelectedPurchaseOrderImpl _value,
      $Res Function(_$SelectedPurchaseOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPurchaseOrder = null,
  }) {
    return _then(_$SelectedPurchaseOrderImpl(
      null == selectedPurchaseOrder
          ? _value.selectedPurchaseOrder
          : selectedPurchaseOrder // ignore: cast_nullable_to_non_nullable
              as RequestPurchaseOrders,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestPurchaseOrdersCopyWith<$Res> get selectedPurchaseOrder {
    return $RequestPurchaseOrdersCopyWith<$Res>(_value.selectedPurchaseOrder,
        (value) {
      return _then(_value.copyWith(selectedPurchaseOrder: value));
    });
  }
}

/// @nodoc

class _$SelectedPurchaseOrderImpl implements _SelectedPurchaseOrder {
  const _$SelectedPurchaseOrderImpl(this.selectedPurchaseOrder);

  @override
  final RequestPurchaseOrders selectedPurchaseOrder;

  @override
  String toString() {
    return 'CreateRequestState.selectedPurchaseOrder(selectedPurchaseOrder: $selectedPurchaseOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedPurchaseOrderImpl &&
            (identical(other.selectedPurchaseOrder, selectedPurchaseOrder) ||
                other.selectedPurchaseOrder == selectedPurchaseOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedPurchaseOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedPurchaseOrderImplCopyWith<_$SelectedPurchaseOrderImpl>
      get copyWith => __$$SelectedPurchaseOrderImplCopyWithImpl<
          _$SelectedPurchaseOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) empty,
    required TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)
        puchaseOrdersLoaded,
    required TResult Function() puchaseOrdersLoading,
    required TResult Function(String? error) puchaseOrdersError,
    required TResult Function(String? message) purchaseOrderEmpty,
    required TResult Function(RequestPurchaseOrders selectedPurchaseOrder)
        selectedPurchaseOrder,
    required TResult Function() createRequestLoading,
    required TResult Function() createRequestSuccess,
    required TResult Function(String? error) createRequestFailure,
  }) {
    return selectedPurchaseOrder(this.selectedPurchaseOrder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? empty,
    TResult? Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult? Function()? puchaseOrdersLoading,
    TResult? Function(String? error)? puchaseOrdersError,
    TResult? Function(String? message)? purchaseOrderEmpty,
    TResult? Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult? Function()? createRequestLoading,
    TResult? Function()? createRequestSuccess,
    TResult? Function(String? error)? createRequestFailure,
  }) {
    return selectedPurchaseOrder?.call(this.selectedPurchaseOrder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? empty,
    TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult Function()? puchaseOrdersLoading,
    TResult Function(String? error)? puchaseOrdersError,
    TResult Function(String? message)? purchaseOrderEmpty,
    TResult Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult Function()? createRequestLoading,
    TResult Function()? createRequestSuccess,
    TResult Function(String? error)? createRequestFailure,
    required TResult orElse(),
  }) {
    if (selectedPurchaseOrder != null) {
      return selectedPurchaseOrder(this.selectedPurchaseOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_PurchaseOrdersLoaded value) puchaseOrdersLoaded,
    required TResult Function(_PurchaseOrdersLoading value)
        puchaseOrdersLoading,
    required TResult Function(_PurchaseOrdersError value) puchaseOrdersError,
    required TResult Function(_PurchaseOrderEmpty value) purchaseOrderEmpty,
    required TResult Function(_SelectedPurchaseOrder value)
        selectedPurchaseOrder,
    required TResult Function(_CreateRequestLoading value) createRequestLoading,
    required TResult Function(_CreateRequestSuccess value) createRequestSuccess,
    required TResult Function(_CreateRequestFailure value) createRequestFailure,
  }) {
    return selectedPurchaseOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult? Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult? Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult? Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult? Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult? Function(_CreateRequestLoading value)? createRequestLoading,
    TResult? Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult? Function(_CreateRequestFailure value)? createRequestFailure,
  }) {
    return selectedPurchaseOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult Function(_CreateRequestLoading value)? createRequestLoading,
    TResult Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult Function(_CreateRequestFailure value)? createRequestFailure,
    required TResult orElse(),
  }) {
    if (selectedPurchaseOrder != null) {
      return selectedPurchaseOrder(this);
    }
    return orElse();
  }
}

abstract class _SelectedPurchaseOrder implements CreateRequestState {
  const factory _SelectedPurchaseOrder(
          final RequestPurchaseOrders selectedPurchaseOrder) =
      _$SelectedPurchaseOrderImpl;

  RequestPurchaseOrders get selectedPurchaseOrder;
  @JsonKey(ignore: true)
  _$$SelectedPurchaseOrderImplCopyWith<_$SelectedPurchaseOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateRequestLoadingImplCopyWith<$Res> {
  factory _$$CreateRequestLoadingImplCopyWith(_$CreateRequestLoadingImpl value,
          $Res Function(_$CreateRequestLoadingImpl) then) =
      __$$CreateRequestLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateRequestLoadingImplCopyWithImpl<$Res>
    extends _$CreateRequestStateCopyWithImpl<$Res, _$CreateRequestLoadingImpl>
    implements _$$CreateRequestLoadingImplCopyWith<$Res> {
  __$$CreateRequestLoadingImplCopyWithImpl(_$CreateRequestLoadingImpl _value,
      $Res Function(_$CreateRequestLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateRequestLoadingImpl implements _CreateRequestLoading {
  const _$CreateRequestLoadingImpl();

  @override
  String toString() {
    return 'CreateRequestState.createRequestLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRequestLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) empty,
    required TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)
        puchaseOrdersLoaded,
    required TResult Function() puchaseOrdersLoading,
    required TResult Function(String? error) puchaseOrdersError,
    required TResult Function(String? message) purchaseOrderEmpty,
    required TResult Function(RequestPurchaseOrders selectedPurchaseOrder)
        selectedPurchaseOrder,
    required TResult Function() createRequestLoading,
    required TResult Function() createRequestSuccess,
    required TResult Function(String? error) createRequestFailure,
  }) {
    return createRequestLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? empty,
    TResult? Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult? Function()? puchaseOrdersLoading,
    TResult? Function(String? error)? puchaseOrdersError,
    TResult? Function(String? message)? purchaseOrderEmpty,
    TResult? Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult? Function()? createRequestLoading,
    TResult? Function()? createRequestSuccess,
    TResult? Function(String? error)? createRequestFailure,
  }) {
    return createRequestLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? empty,
    TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult Function()? puchaseOrdersLoading,
    TResult Function(String? error)? puchaseOrdersError,
    TResult Function(String? message)? purchaseOrderEmpty,
    TResult Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult Function()? createRequestLoading,
    TResult Function()? createRequestSuccess,
    TResult Function(String? error)? createRequestFailure,
    required TResult orElse(),
  }) {
    if (createRequestLoading != null) {
      return createRequestLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_PurchaseOrdersLoaded value) puchaseOrdersLoaded,
    required TResult Function(_PurchaseOrdersLoading value)
        puchaseOrdersLoading,
    required TResult Function(_PurchaseOrdersError value) puchaseOrdersError,
    required TResult Function(_PurchaseOrderEmpty value) purchaseOrderEmpty,
    required TResult Function(_SelectedPurchaseOrder value)
        selectedPurchaseOrder,
    required TResult Function(_CreateRequestLoading value) createRequestLoading,
    required TResult Function(_CreateRequestSuccess value) createRequestSuccess,
    required TResult Function(_CreateRequestFailure value) createRequestFailure,
  }) {
    return createRequestLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult? Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult? Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult? Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult? Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult? Function(_CreateRequestLoading value)? createRequestLoading,
    TResult? Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult? Function(_CreateRequestFailure value)? createRequestFailure,
  }) {
    return createRequestLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult Function(_CreateRequestLoading value)? createRequestLoading,
    TResult Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult Function(_CreateRequestFailure value)? createRequestFailure,
    required TResult orElse(),
  }) {
    if (createRequestLoading != null) {
      return createRequestLoading(this);
    }
    return orElse();
  }
}

abstract class _CreateRequestLoading implements CreateRequestState {
  const factory _CreateRequestLoading() = _$CreateRequestLoadingImpl;
}

/// @nodoc
abstract class _$$CreateRequestSuccessImplCopyWith<$Res> {
  factory _$$CreateRequestSuccessImplCopyWith(_$CreateRequestSuccessImpl value,
          $Res Function(_$CreateRequestSuccessImpl) then) =
      __$$CreateRequestSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateRequestSuccessImplCopyWithImpl<$Res>
    extends _$CreateRequestStateCopyWithImpl<$Res, _$CreateRequestSuccessImpl>
    implements _$$CreateRequestSuccessImplCopyWith<$Res> {
  __$$CreateRequestSuccessImplCopyWithImpl(_$CreateRequestSuccessImpl _value,
      $Res Function(_$CreateRequestSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateRequestSuccessImpl implements _CreateRequestSuccess {
  const _$CreateRequestSuccessImpl();

  @override
  String toString() {
    return 'CreateRequestState.createRequestSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRequestSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) empty,
    required TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)
        puchaseOrdersLoaded,
    required TResult Function() puchaseOrdersLoading,
    required TResult Function(String? error) puchaseOrdersError,
    required TResult Function(String? message) purchaseOrderEmpty,
    required TResult Function(RequestPurchaseOrders selectedPurchaseOrder)
        selectedPurchaseOrder,
    required TResult Function() createRequestLoading,
    required TResult Function() createRequestSuccess,
    required TResult Function(String? error) createRequestFailure,
  }) {
    return createRequestSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? empty,
    TResult? Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult? Function()? puchaseOrdersLoading,
    TResult? Function(String? error)? puchaseOrdersError,
    TResult? Function(String? message)? purchaseOrderEmpty,
    TResult? Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult? Function()? createRequestLoading,
    TResult? Function()? createRequestSuccess,
    TResult? Function(String? error)? createRequestFailure,
  }) {
    return createRequestSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? empty,
    TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult Function()? puchaseOrdersLoading,
    TResult Function(String? error)? puchaseOrdersError,
    TResult Function(String? message)? purchaseOrderEmpty,
    TResult Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult Function()? createRequestLoading,
    TResult Function()? createRequestSuccess,
    TResult Function(String? error)? createRequestFailure,
    required TResult orElse(),
  }) {
    if (createRequestSuccess != null) {
      return createRequestSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_PurchaseOrdersLoaded value) puchaseOrdersLoaded,
    required TResult Function(_PurchaseOrdersLoading value)
        puchaseOrdersLoading,
    required TResult Function(_PurchaseOrdersError value) puchaseOrdersError,
    required TResult Function(_PurchaseOrderEmpty value) purchaseOrderEmpty,
    required TResult Function(_SelectedPurchaseOrder value)
        selectedPurchaseOrder,
    required TResult Function(_CreateRequestLoading value) createRequestLoading,
    required TResult Function(_CreateRequestSuccess value) createRequestSuccess,
    required TResult Function(_CreateRequestFailure value) createRequestFailure,
  }) {
    return createRequestSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult? Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult? Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult? Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult? Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult? Function(_CreateRequestLoading value)? createRequestLoading,
    TResult? Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult? Function(_CreateRequestFailure value)? createRequestFailure,
  }) {
    return createRequestSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult Function(_CreateRequestLoading value)? createRequestLoading,
    TResult Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult Function(_CreateRequestFailure value)? createRequestFailure,
    required TResult orElse(),
  }) {
    if (createRequestSuccess != null) {
      return createRequestSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateRequestSuccess implements CreateRequestState {
  const factory _CreateRequestSuccess() = _$CreateRequestSuccessImpl;
}

/// @nodoc
abstract class _$$CreateRequestFailureImplCopyWith<$Res> {
  factory _$$CreateRequestFailureImplCopyWith(_$CreateRequestFailureImpl value,
          $Res Function(_$CreateRequestFailureImpl) then) =
      __$$CreateRequestFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$CreateRequestFailureImplCopyWithImpl<$Res>
    extends _$CreateRequestStateCopyWithImpl<$Res, _$CreateRequestFailureImpl>
    implements _$$CreateRequestFailureImplCopyWith<$Res> {
  __$$CreateRequestFailureImplCopyWithImpl(_$CreateRequestFailureImpl _value,
      $Res Function(_$CreateRequestFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$CreateRequestFailureImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateRequestFailureImpl implements _CreateRequestFailure {
  const _$CreateRequestFailureImpl(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'CreateRequestState.createRequestFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRequestFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRequestFailureImplCopyWith<_$CreateRequestFailureImpl>
      get copyWith =>
          __$$CreateRequestFailureImplCopyWithImpl<_$CreateRequestFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) empty,
    required TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)
        puchaseOrdersLoaded,
    required TResult Function() puchaseOrdersLoading,
    required TResult Function(String? error) puchaseOrdersError,
    required TResult Function(String? message) purchaseOrderEmpty,
    required TResult Function(RequestPurchaseOrders selectedPurchaseOrder)
        selectedPurchaseOrder,
    required TResult Function() createRequestLoading,
    required TResult Function() createRequestSuccess,
    required TResult Function(String? error) createRequestFailure,
  }) {
    return createRequestFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? empty,
    TResult? Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult? Function()? puchaseOrdersLoading,
    TResult? Function(String? error)? puchaseOrdersError,
    TResult? Function(String? message)? purchaseOrderEmpty,
    TResult? Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult? Function()? createRequestLoading,
    TResult? Function()? createRequestSuccess,
    TResult? Function(String? error)? createRequestFailure,
  }) {
    return createRequestFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? empty,
    TResult Function(List<RequestPurchaseOrders> purchaseOrders,
            List<String>? phaseOptions)?
        puchaseOrdersLoaded,
    TResult Function()? puchaseOrdersLoading,
    TResult Function(String? error)? puchaseOrdersError,
    TResult Function(String? message)? purchaseOrderEmpty,
    TResult Function(RequestPurchaseOrders selectedPurchaseOrder)?
        selectedPurchaseOrder,
    TResult Function()? createRequestLoading,
    TResult Function()? createRequestSuccess,
    TResult Function(String? error)? createRequestFailure,
    required TResult orElse(),
  }) {
    if (createRequestFailure != null) {
      return createRequestFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_PurchaseOrdersLoaded value) puchaseOrdersLoaded,
    required TResult Function(_PurchaseOrdersLoading value)
        puchaseOrdersLoading,
    required TResult Function(_PurchaseOrdersError value) puchaseOrdersError,
    required TResult Function(_PurchaseOrderEmpty value) purchaseOrderEmpty,
    required TResult Function(_SelectedPurchaseOrder value)
        selectedPurchaseOrder,
    required TResult Function(_CreateRequestLoading value) createRequestLoading,
    required TResult Function(_CreateRequestSuccess value) createRequestSuccess,
    required TResult Function(_CreateRequestFailure value) createRequestFailure,
  }) {
    return createRequestFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult? Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult? Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult? Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult? Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult? Function(_CreateRequestLoading value)? createRequestLoading,
    TResult? Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult? Function(_CreateRequestFailure value)? createRequestFailure,
  }) {
    return createRequestFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_PurchaseOrdersLoaded value)? puchaseOrdersLoaded,
    TResult Function(_PurchaseOrdersLoading value)? puchaseOrdersLoading,
    TResult Function(_PurchaseOrdersError value)? puchaseOrdersError,
    TResult Function(_PurchaseOrderEmpty value)? purchaseOrderEmpty,
    TResult Function(_SelectedPurchaseOrder value)? selectedPurchaseOrder,
    TResult Function(_CreateRequestLoading value)? createRequestLoading,
    TResult Function(_CreateRequestSuccess value)? createRequestSuccess,
    TResult Function(_CreateRequestFailure value)? createRequestFailure,
    required TResult orElse(),
  }) {
    if (createRequestFailure != null) {
      return createRequestFailure(this);
    }
    return orElse();
  }
}

abstract class _CreateRequestFailure implements CreateRequestState {
  const factory _CreateRequestFailure(final String? error) =
      _$CreateRequestFailureImpl;

  String? get error;
  @JsonKey(ignore: true)
  _$$CreateRequestFailureImplCopyWith<_$CreateRequestFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
