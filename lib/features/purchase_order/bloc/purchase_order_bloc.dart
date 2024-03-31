import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fwms_rm_app/features/purchase_order/data/purchase_order_repository.dart';
import 'package:fwms_rm_app/features/purchase_order/dtos/purchase_order_response_dto.dart';

part 'purchase_order_event.dart';
part 'purchase_order_state.dart';

class PurchaseOrderBloc extends Bloc<PurchaseOrderEvent, PurchaseOrderState> {
  final PurchaseOrderRepository purchaseOrderRepository;
  PurchaseOrderBloc(this.purchaseOrderRepository)
      : super(PurchaseOrderLoadingState()) {
    on<PurchaseOrderEvent>(
      (event, emit) async {
        try {
          emit(PurchaseOrderLoadingState());
          var data = await purchaseOrderRepository.fetchPurchaseOrders();
          emit(PurchaseOrderLoadedState(data));
        } catch (e) {
          emit(PurchaseOrderErrorState(e.toString()));
        }
      },
    );
  }
}
