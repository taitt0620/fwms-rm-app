part of 'purchase_order_bloc.dart';

@freezed
class PurchaseOrderEvent with _$PurchaseOrderEvent {
  const factory PurchaseOrderEvent.started() = _Started;
  const factory PurchaseOrderEvent.loadMore() = _LoadMore; // Add load more
  const factory PurchaseOrderEvent.refresh() = _Refresh;
}
