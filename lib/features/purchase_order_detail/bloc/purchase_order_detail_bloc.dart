import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fwms_rm_app/features/purchase_order_detail/data/purchase_order_detail_repository.dart';
import 'package:fwms_rm_app/features/purchase_order_detail/dtos/purchase_order_detail_dto.dart';

part 'purchase_order_detail_event.dart';
part 'purchase_order_detail_state.dart';

class PurchaseOrderDetailBloc
    extends Bloc<PurchaseOrderDetailEvent, PurchaseOrderDetailState> {
  final PurchaseOrderDetailRepository purchaseOrderDetailRepository;
  PurchaseOrderDetailBloc(this.purchaseOrderDetailRepository)
      : super(PurchaseOrderDetailInitial()) {
    on<LoadPurchaseOrderDetailEvent>(_onLoadPurchaseOrderDetailEvent);
  }

  void _onLoadPurchaseOrderDetailEvent(LoadPurchaseOrderDetailEvent event,
      Emitter<PurchaseOrderDetailState> emit) async {
    try {
      emit(PurchaseOrderDetailLoading());
      var data = await purchaseOrderDetailRepository
          .fetchPurchaseOrderDetail(event.id);
      emit(PurchaseOrderDetailLoaded(data));
    } catch (e) {
      emit(PurchaseOrderDetailError(e.toString()));
    }
  }
}
