import 'package:fwms_rm_app/features/purchase_order/data/purchase_order_api_client.dart';
import 'package:fwms_rm_app/features/purchase_order/dtos/purchase_order_response_dto.dart';

class PurchaseOrderRepository {
  final PurchaseOrderApiClient purchaseOrderApiClient;

  PurchaseOrderRepository({required this.purchaseOrderApiClient});

  Future<List<PurchaseOrderResponseDto>> fetchPurchaseOrders() async {
    return purchaseOrderApiClient.fetchPurchaseOrders();
  }
}
