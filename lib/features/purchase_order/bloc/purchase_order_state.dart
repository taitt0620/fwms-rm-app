part of 'purchase_order_bloc.dart';

@freezed
class PurchaseOrderState with _$PurchaseOrderState {
  const PurchaseOrderState._();

  const factory PurchaseOrderState.initial() = _Initial;
  const factory PurchaseOrderState.loading() = _Loading;
  const factory PurchaseOrderState.loaded({
    required List<PurchaseOrder> purchaseOrders,
    required bool? hasReachedMax,
  }) = _Loaded;

  const factory PurchaseOrderState.error(Object? error) = _Error;
}
