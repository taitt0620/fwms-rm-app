import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwms_rm_app/features/purchase_order_detail/data/purchase_order_detail_repository.dart';
import 'package:fwms_rm_app/features/purchase_order_detail/models/purchase_order_detail.dart';

part 'purchase_order_detail_event.dart';
part 'purchase_order_detail_state.dart';
part 'purchase_order_detail_bloc.freezed.dart';

class PurchaseOrderDetailBloc
    extends Bloc<PurchaseOrderDetailEvent, PurchaseOrderDetailState> {
  final PurchaseOrderDetailRepository repo;
  PurchaseOrderDetailBloc(this.repo) : super(const _Initial()) {
    on<PurchaseOrderDetailEvent>(_onLoadPurchaseOrderDetailStarted);
  }

  void _onLoadPurchaseOrderDetailStarted(PurchaseOrderDetailEvent event,
      Emitter<PurchaseOrderDetailState> emit) async {
    if (event is _FetchPurchaseOrderStarted) {
      emit(const PurchaseOrderDetailState.loading());
      try {
        final purchaseOrderDetail = await repo.fetchPurchaseOrder(event.id);
        emit(PurchaseOrderDetailState.loaded(
            purchaseOrderDetail: purchaseOrderDetail));
      } catch (error) {
        emit(PurchaseOrderDetailState.error(error));
      }
    }
  }
}
