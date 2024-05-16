import 'package:fwms_rm_app/features/auth/data/auth_local_data_source.dart';
import 'package:fwms_rm_app/features/purchase_order/data/purchase_order_api_client.dart';
import 'package:fwms_rm_app/features/purchase_order/models/purchase_order.dart';

class PurchaseOrderRepository {
  final PurchaseOrderApiClient apiClient;
  final AuthLocalDataSource authLocalDataSource;

  PurchaseOrderRepository(
      {required this.apiClient, required this.authLocalDataSource});

  Future<List<PurchaseOrder>> fetchPurchaseOrders(
      {required int pageIndex, required int pageSize}) async {
    final token = await authLocalDataSource.getToken();
    if (token == null) {
      throw Exception('Token is null');
    }
    final purchaseOrders = await apiClient.fetchPurchaseOrders(
        pageIndex: pageIndex, pageSize: pageSize, token: token);
    return purchaseOrders;
  }
}
