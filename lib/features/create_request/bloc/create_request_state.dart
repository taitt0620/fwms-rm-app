part of 'create_request_bloc.dart';

@freezed
class CreateRequestState with _$CreateRequestState {
  const factory CreateRequestState.initial() = _Initial;
  const factory CreateRequestState.loading() = _Loading;
  

  const factory CreateRequestState.empty(String? message) = _Empty;
  const factory CreateRequestState.puchaseOrdersLoaded(
    List<RequestPurchaseOrders> purchaseOrders, {
      List<String>? phaseOptions,
    }
  ) = _PurchaseOrdersLoaded;
  const factory CreateRequestState.puchaseOrdersLoading() = _PurchaseOrdersLoading;
  const factory CreateRequestState.puchaseOrdersError(String? error) =
      _PurchaseOrdersError;

  const factory CreateRequestState.purchaseOrderEmpty(String? message) = _PurchaseOrderEmpty;
  const factory CreateRequestState.selectedPurchaseOrder(
      RequestPurchaseOrders selectedPurchaseOrder) = _SelectedPurchaseOrder;

  /// Create Request
  const factory CreateRequestState.createRequestLoading() = _CreateRequestLoading;
  const factory CreateRequestState.createRequestSuccess() = _CreateRequestSuccess;
  const factory CreateRequestState.createRequestFailure(String? error) = _CreateRequestFailure;
}
