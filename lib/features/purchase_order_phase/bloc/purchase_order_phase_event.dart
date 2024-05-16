part of 'purchase_order_phase_bloc.dart';

@freezed
class PurchaseOrderPhaseEvent with _$PurchaseOrderPhaseEvent {
  const factory PurchaseOrderPhaseEvent.started() = _Started;
  const factory PurchaseOrderPhaseEvent.getPhasesOfPurchaseOrder(String id) = _GetPhasesOfPurchaseOrder;
}