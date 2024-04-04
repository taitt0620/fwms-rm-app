part of 'purchase_order_detail_bloc.dart';

sealed class PurchaseOrderDetailEvent extends Equatable {
  const PurchaseOrderDetailEvent();

  @override
  List<Object> get props => [];
}

class LoadPurchaseOrderDetailEvent extends PurchaseOrderDetailEvent {
  final String id;

  const LoadPurchaseOrderDetailEvent(this.id);

  @override
  List<Object> get props => [id];
}
