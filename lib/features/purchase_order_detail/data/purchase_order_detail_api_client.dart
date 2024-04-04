import 'package:dio/dio.dart';
import 'package:fwms_rm_app/features/purchase_order_detail/dtos/purchase_order_detail_dto.dart';

class PurchaseOrderDetailApiClient {
  final Dio dio;

  PurchaseOrderDetailApiClient(this.dio);

  Future<List<PurchaseOrderDetailDto>> fetchPurchaseOrderDetail(
      String id) async {
    try {
      // Make API call to fetch purchase order detail
      final response =
          await dio.get('/purchase-order/$id/purchase-order-details');
      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = response.data;
        List<dynamic> jsonString = responseData['data'];
        return jsonString
            .map((e) => PurchaseOrderDetailDto.fromJson(e))
            .toList();
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
