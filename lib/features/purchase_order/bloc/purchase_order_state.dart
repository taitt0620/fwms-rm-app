part of 'purchase_order_bloc.dart';

abstract class PurchaseOrderState extends Equatable {
  const PurchaseOrderState();

  @override
  List<Object> get props => [];
}

final class PurchaseOrderInitial extends PurchaseOrderState {}

final class PurchaseOrderInProgress extends PurchaseOrderState {}

final class PurchaseOrderSuccess extends PurchaseOrderState {
  final List<PurchaseOrderResponseDto> purchaseOrders;

  const PurchaseOrderSuccess(this.purchaseOrders);

  @override
  List<Object> get props => [purchaseOrders];
}

final class PurchaseOrderFailure extends PurchaseOrderState {
  final String message;

  const PurchaseOrderFailure(this.message);
}
