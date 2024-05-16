import 'package:dio/dio.dart';
import 'package:fwms_rm_app/features/purchase_order_detail/models/purchase_order_detail.dart';

class PurchaseOrderDetailApiClient {
  final Dio dio;

  PurchaseOrderDetailApiClient(this.dio);

  /// fetch purchase order detail
  Future<List<PurchaseOrderDetail>> fetchPurchaseOrder(
      {required String id, required String token}) async {
    try {
      // Make API call to fetch purchase order detail
      final response =
          await dio.get('/purchase-order/$id/purchase-order-details');
      if (response.statusCode == 200) {
        final data = response.data['data'] as List<dynamic>;
        return data.map((item) => PurchaseOrderDetail.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load purchase order detail');
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
