import 'package:dio/dio.dart';
import 'package:fwms_rm_app/features/purchase_order_phase/models/purchase_order_phase.dart';

class PurchaseOrderPhaseApiClient {
  final Dio dio;

  PurchaseOrderPhaseApiClient(this.dio);

  Future<List<PurchaseOrderPhase>> getPhasesOfPurchaseOrder(
      {required String id, required String token}) async {
    try {
      final response = await dio.get(
        '/purchase-order-phase/$id/purchase-order-phase-details',
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      );
      if (response.statusCode == 200) {
        final data = response.data['data'] as List<dynamic>;
        return data.map((item) => PurchaseOrderPhase.fromJson(item)).toList();
      } else {
        throw Exception('Failed to fetch purchase order phases');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception(e.response!.data['message']);
      } else {
        throw Exception(e.message);
      }
    }
  }
}
