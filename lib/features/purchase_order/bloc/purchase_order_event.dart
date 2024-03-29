part of 'purchase_order_bloc.dart';

abstract class PurchaseOrderStarted extends Equatable {
  const PurchaseOrderStarted();

  @override
  List<Object> get props => [];
}

class FetchAllPurchaseOrdersStarted extends PurchaseOrderStarted {}
