part of 'purchase_order_phase_bloc.dart';

@freezed
class PurchaseOrderPhaseState with _$PurchaseOrderPhaseState {
  const factory PurchaseOrderPhaseState.initial() = _Initial;
  const factory PurchaseOrderPhaseState.loading() = _Loading;
  const factory PurchaseOrderPhaseState.loaded({required List<PurchaseOrderPhase> phases}) = _Loaded;
  const factory PurchaseOrderPhaseState.error(Object? message) = _Error;
}
