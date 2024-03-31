part of 'purchase_order_bloc.dart';

sealed class PurchaseOrderState extends Equatable {
  const PurchaseOrderState();

  @override
  List<Object> get props => [];
}

final class PurchaseOrderInitial extends PurchaseOrderState {}

final class PurchaseOrderLoadingState extends PurchaseOrderState {}

class PurchaseOrderLoadedState extends PurchaseOrderState {
  final List<PurchaseOrderResponseDto> purchaseOrders;
  const PurchaseOrderLoadedState(this.purchaseOrders);

  @override
  List<Object> get props => [purchaseOrders];
}

class PurchaseOrderErrorState extends PurchaseOrderState {
  final String message;

  const PurchaseOrderErrorState(this.message);

  @override
  List<Object> get props => [message];
}
