import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwms_rm_app/features/purchase_order/data/purchase_order_repository.dart';
import 'package:fwms_rm_app/features/purchase_order/models/purchase_order.dart';

part 'purchase_order_event.dart';
part 'purchase_order_state.dart';
part 'purchase_order_bloc.freezed.dart';

class PurchaseOrderBloc extends Bloc<PurchaseOrderEvent, PurchaseOrderState> {
  final PurchaseOrderRepository repo;

  int _currentPage = 0;
  bool _hasReachedMax = false;

  PurchaseOrderBloc(this.repo) : super(const _Initial()) {
    on<PurchaseOrderEvent>(_onHandlePurchaseOrderStarted);
  }

  void _onHandlePurchaseOrderStarted(
      PurchaseOrderEvent event, Emitter<PurchaseOrderState> emit) async {
    if (event is _Started || event is _Refresh) {
      _currentPage = 1;
      _hasReachedMax = false;
      emit(const PurchaseOrderState.loading());
      try {
        final purchaseOrders = await repo.fetchPurchaseOrders(
            pageIndex: _currentPage, pageSize: 10);
        emit(PurchaseOrderState.loaded(
            purchaseOrders: purchaseOrders, hasReachedMax: _hasReachedMax));
        _currentPage++;
      } catch (error) {
        emit(PurchaseOrderState.error(error));
      }
    } else if (event is _LoadMore && !_hasReachedMax) {
      emit(const PurchaseOrderState.loading());
      try {
        final purchaseOrders = await repo.fetchPurchaseOrders(
            pageIndex: _currentPage, pageSize: 10);
        final hasReachedMax = purchaseOrders.length < 10;
        emit(PurchaseOrderState.loaded(
            purchaseOrders: purchaseOrders, hasReachedMax: hasReachedMax));
        if (!hasReachedMax) _currentPage++;
      } catch (error) {
        emit(PurchaseOrderState.error(error));
      }
    }
  }
}
