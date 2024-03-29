part of 'purchase_order_bloc.dart';

sealed class PurchaseOrderState extends Equatable {
  const PurchaseOrderState();

  @override
  List<Object> get props => [];
}

final class PurchaseOrderInitial extends PurchaseOrderState {}
