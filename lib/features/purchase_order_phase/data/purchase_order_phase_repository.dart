import 'package:fwms_rm_app/features/auth/data/auth_local_data_source.dart';
import 'package:fwms_rm_app/features/purchase_order_phase/data/purchase_order_phase_api_client.dart';
import 'package:fwms_rm_app/features/purchase_order_phase/models/purchase_order_phase.dart';

class PurchaseOrderPhaseRepository {
  final PurchaseOrderPhaseApiClient apiClient;
  final AuthLocalDataSource authLocalDataSource;

  PurchaseOrderPhaseRepository(
      {required this.apiClient, required this.authLocalDataSource});

  Future<List<PurchaseOrderPhase>> getPhasesOfPurchaseOrder(String id) async {
    try {
      final token = await authLocalDataSource.getToken();
      if (token == null) {
        throw Exception('Token is null');
      }
      final phases =
          await apiClient.getPhasesOfPurchaseOrder(id: id, token: token!);
      return phases;
    } catch (e) {
      throw Exception('Error fetching phases of purchase order: $e');
    }
  }
}
