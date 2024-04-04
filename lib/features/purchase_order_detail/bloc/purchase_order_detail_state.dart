part of 'purchase_order_detail_bloc.dart';

sealed class PurchaseOrderDetailState extends Equatable {
  const PurchaseOrderDetailState();

  @override
  List<Object> get props => [];
}

final class PurchaseOrderDetailInitial extends PurchaseOrderDetailState {}

final class PurchaseOrderDetailLoading extends PurchaseOrderDetailState {}

final class PurchaseOrderDetailLoaded extends PurchaseOrderDetailState {
  final List<PurchaseOrderDetailDto> purchaseOrderDetail;
  const PurchaseOrderDetailLoaded(this.purchaseOrderDetail);

  @override
  List<Object> get props => [purchaseOrderDetail];
}

final class PurchaseOrderDetailError extends PurchaseOrderDetailState {
  final String message;

  const PurchaseOrderDetailError(this.message);

  @override
  List<Object> get props => [message];
}
