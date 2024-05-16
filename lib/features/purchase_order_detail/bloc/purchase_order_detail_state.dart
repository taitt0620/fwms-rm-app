part of 'purchase_order_detail_bloc.dart';

@freezed
class PurchaseOrderDetailState with _$PurchaseOrderDetailState {
  const factory PurchaseOrderDetailState.initial() = _Initial;
  const factory PurchaseOrderDetailState.loading() = _Loading;
  const factory PurchaseOrderDetailState.loaded({
    required List<PurchaseOrderDetail> purchaseOrderDetail,
  }) = _Loaded;
  const factory PurchaseOrderDetailState.error(Object? error) = _Error;
}
