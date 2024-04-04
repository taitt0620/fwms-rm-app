import 'package:fwms_rm_app/features/purchase_order_detail/data/purchase_order_detail_api_client.dart';
import 'package:fwms_rm_app/features/purchase_order_detail/dtos/purchase_order_detail_dto.dart';

class PurchaseOrderDetailRepository {
  final PurchaseOrderDetailApiClient _apiClient;

  PurchaseOrderDetailRepository(
      {required PurchaseOrderDetailApiClient apiClient})
      : _apiClient = apiClient;

  Future<List<PurchaseOrderDetailDto>> fetchPurchaseOrderDetail(
      String id) async {
    return _apiClient.fetchPurchaseOrderDetail(id);
  }

  // Future<List<PurchaseOrderDetailDto>> getPurchaseOrderDetails() async {
  //   return _apiClient.getPurchaseOrderDetails();
  // }

  // Future<void> addPurchaseOrderDetail(PurchaseOrderDetailDto purchaseOrderDetail) async {
  //   return _apiClient.addPurchaseOrderDetail(purchaseOrderDetail);
  // }

  // Future<void> updatePurchaseOrderDetail(PurchaseOrderDetailDto purchaseOrderDetail) async {
  //   return _apiClient.updatePurchaseOrderDetail(purchaseOrderDetail);
  // }

  // Future<void> deletePurchaseOrderDetail(String id) async {
  //   return _apiClient.deletePurchaseOrderDetail(id);
  // }
}
