import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwms_rm_app/features/create_request/data/create_request_repository.dart';
import 'package:fwms_rm_app/features/create_request/models/request_purchase_orders.dart';

part 'create_request_event.dart';
part 'create_request_state.dart';
part 'create_request_bloc.freezed.dart';

class CreateRequestBloc extends Bloc<CreateRequestEvent, CreateRequestState> {
  final CreateRequestRepository repo;
  CreateRequestBloc(this.repo) : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_FetchRequestPurchaseOrders>(_onFetchRequestPurchaseOrdersStarted);
    on<_SelectPurchaseOrder>(_onSelectPurchaseOrderStarted);
    on<_CreateRequest>(_onCreateRequestStarted);
  }

  FutureOr<void> _onStarted(
      _Started event, Emitter<CreateRequestState> emit) async {
    emit(const _Initial());
  }

  FutureOr<void> _onFetchRequestPurchaseOrdersStarted(
      _FetchRequestPurchaseOrders event,
      Emitter<CreateRequestState> emit) async {
    emit(const _PurchaseOrdersLoading());
    try {
      final purchaseOrders = await repo.fetchRequestPurchaserOrders(
          index: event.index, warehouseId: event.warehouseId);
      if (purchaseOrders.isEmpty) {
        emit(const _PurchaseOrderEmpty('No Purchase Orders Found'));
      } else {
        emit(_PurchaseOrdersLoaded(purchaseOrders));
      }
    } catch (e) {
      emit(_PurchaseOrdersError(e.toString()));
    }
  }

  FutureOr<void> _onSelectPurchaseOrderStarted(
      _SelectPurchaseOrder event, Emitter<CreateRequestState> emit) async {
    final selectedPurchaseOrder = event.purchaseOrder;
    List<RequestPurchaseOrders> purchaseOrders = event.list;
    final phaseOptions = selectedPurchaseOrder.purchaseOrderPhases
        .map((phase) => phase.phase.toString())
        .toList();
    if (phaseOptions.isEmpty) {
      phaseOptions.add('No Phase Options Found');
      emit(const _PurchaseOrderEmpty('No Phase Options Found'));
    }
    emit(
      _PurchaseOrdersLoaded(purchaseOrders, phaseOptions: phaseOptions),
    );
  }

  FutureOr<void> _onCreateRequestStarted(
      _CreateRequest event, Emitter<CreateRequestState> emit) async {
    emit(const _CreateRequestLoading());
    try {
      await repo.createRequest(
        title: event.title,
        warehouseId: event.warehouseId,
        relatedInformation: event.relatedInformation,
        phase: event.phase,
        description: event.description,
      );
      emit(const _CreateRequestSuccess());
    } catch (e) {
      emit(_CreateRequestFailure(e.toString()));
    }
  }
}
