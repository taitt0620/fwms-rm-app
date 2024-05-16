part of 'purchase_order_detail_bloc.dart';

@freezed
class PurchaseOrderDetailEvent with _$PurchaseOrderDetailEvent {
  const factory PurchaseOrderDetailEvent.fetchPurchaseOrderStarted(String id) = _FetchPurchaseOrderStarted;
  
}
