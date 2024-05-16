import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwms_rm_app/features/purchase_order_phase/data/purchase_order_phase_repository.dart';
import 'package:fwms_rm_app/features/purchase_order_phase/models/purchase_order_phase.dart';

part 'purchase_order_phase_event.dart';
part 'purchase_order_phase_state.dart';
part 'purchase_order_phase_bloc.freezed.dart';

class PurchaseOrderPhaseBloc
    extends Bloc<PurchaseOrderPhaseEvent, PurchaseOrderPhaseState> {
  final PurchaseOrderPhaseRepository repo;
  PurchaseOrderPhaseBloc(this.repo) : super(const _Initial()) {
    on<PurchaseOrderPhaseEvent>(_onGetPhasesOfPurchaseOrder);
  }

  FutureOr<void> _onGetPhasesOfPurchaseOrder(PurchaseOrderPhaseEvent event,
      Emitter<PurchaseOrderPhaseState> emit) async {
    if (event is _GetPhasesOfPurchaseOrder) {
      emit(const PurchaseOrderPhaseState.loading());
      try {
        final phases = await repo.getPhasesOfPurchaseOrder(event.id);
        emit(PurchaseOrderPhaseState.loaded(phases: phases));
      } catch (error) {
        emit(PurchaseOrderPhaseState.error(error));
      }
    }
  }
}
