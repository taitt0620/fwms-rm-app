import 'package:fwms_rm_app/features/auth/data/auth_local_data_source.dart';
import 'package:fwms_rm_app/features/purchase_order_detail/data/purchase_order_detail_api_client.dart';
import 'package:fwms_rm_app/features/purchase_order_detail/models/purchase_order_detail.dart';

class PurchaseOrderDetailRepository {
  final PurchaseOrderDetailApiClient apiClient;
  final AuthLocalDataSource authLocalDataSource;

  PurchaseOrderDetailRepository(
      {required this.apiClient, required this.authLocalDataSource});

  Future<List<PurchaseOrderDetail>> fetchPurchaseOrder(String id) async {
    final token = await authLocalDataSource.getToken();
    final purchaseOrderDetail =
        await apiClient.fetchPurchaseOrder(id: id, token: token!);
    return purchaseOrderDetail;
  }
}
