part of 'create_request_bloc.dart';

@freezed
class CreateRequestEvent with _$CreateRequestEvent {
  const factory CreateRequestEvent.started() = _Started;
  const factory CreateRequestEvent.fetRequestPurchaseOrders(
      int index, String warehouseId) = _FetchRequestPurchaseOrders;
  const factory CreateRequestEvent.selectPurchaseOrder(
      List<RequestPurchaseOrders> list,
      RequestPurchaseOrders purchaseOrder) = _SelectPurchaseOrder;

  ///Create Request
  const factory CreateRequestEvent.createRequest(
      int title,
      String warehouseId,
      String relatedInformation,
      int phase,
      String description) = _CreateRequest;
}
