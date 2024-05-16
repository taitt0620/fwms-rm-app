import 'package:fwms_rm_app/features/auth/data/auth_local_data_source.dart';
import 'package:fwms_rm_app/features/create_request/data/create_request_api_client.dart';
import 'package:fwms_rm_app/features/create_request/models/request_purchase_orders.dart';

class CreateRequestRepository {
  final CreateRequestApiClient apiClient;
  final AuthLocalDataSource authLocalDataSource;

  CreateRequestRepository(
      {required this.apiClient, required this.authLocalDataSource});

  Future<List<RequestPurchaseOrders>> fetchRequestPurchaserOrders(
      {required int index, required String warehouseId}) async {
    try {
      final token = await authLocalDataSource.getToken();
      if (token == null) {
        throw Exception('Token is null');
      }
      final purchaseOrders = await apiClient.fetchRequestPurchaseOrders(
          index: index, warehouseId: warehouseId, token: token);
      return purchaseOrders;
    } catch (e) {
      throw Exception('Error fetching purchase orders: $e');
    }
  }

  Future<void> createRequest(
      {required int title,
      required String warehouseId,
      required String relatedInformation,
      required int phase,
      required String description}) async {
    try {
      final token = await authLocalDataSource.getToken();
      if (token == null) {
        throw Exception('Token is null');
      }
      await apiClient.createRequest(
          title: title,
          warehouseId: warehouseId,
          relatedInformation: relatedInformation,
          phase: phase,
          description: description,
          token: token);
    } catch (e) {
      throw Exception('Error creating request: $e');
    }
  }
}
