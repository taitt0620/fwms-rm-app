import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fwms_rm_app/features/purchase_order/data/purchase_order_repository.dart';
import 'package:fwms_rm_app/features/purchase_order/dtos/purchase_order_response_dto.dart';
import 'package:fwms_rm_app/features/result_type.dart';

part 'purchase_order_event.dart';
part 'purchase_order_state.dart';

class PurchaseOrderBloc extends Bloc<PurchaseOrderStarted, PurchaseOrderState> {
  PurchaseOrderBloc(this.purchaseOrderRepository)
      : super(PurchaseOrderInitial()) {
    on<PurchaseOrderStarted>(_onStarted);
    on<FetchAllPurchaseOrdersStarted>(_onFetchAllPurchaseOrdersStarted);
  }

  final PurchaseOrderRepository purchaseOrderRepository;

  void _onStarted(
      PurchaseOrderStarted event, Emitter<PurchaseOrderState> emit) {
    emit(PurchaseOrderInitial());
  }

  void _onFetchAllPurchaseOrdersStarted(FetchAllPurchaseOrdersStarted event,
      Emitter<PurchaseOrderState> emit) async {
    emit(PurchaseOrderInProgress());
    final result = await purchaseOrderRepository.fetchPurchaseOrders();
    return (switch (result) {
      Success() => emit(PurchaseOrderSuccess(result)),
      Failure() => emit(PurchaseOrderFailure('An unknown error occurred')),
      _ => emit(PurchaseOrderFailure('Unexpected Error')),
    });
  }
}
