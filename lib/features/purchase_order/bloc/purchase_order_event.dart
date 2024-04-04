part of 'purchase_order_bloc.dart';

class PurchaseOrderEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class PurchaseOrderDetailEvent extends Equatable {
  final String id;

  PurchaseOrderDetailEvent(this.id);

  @override
  List<Object?> get props => [id];
}
