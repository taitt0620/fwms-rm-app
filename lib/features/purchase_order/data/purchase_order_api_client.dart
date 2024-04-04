import 'package:dio/dio.dart';
import 'package:fwms_rm_app/features/purchase_order/dtos/purchase_order_response_dto.dart';

class PurchaseOrderApiClient {
  final Dio dio;

  PurchaseOrderApiClient(this.dio);

  Future<List<PurchaseOrderResponseDto>> fetchPurchaseOrders() async {
    try {
      Response response = await dio.get('/purchase-order');

      // Assuming API response format like this:
      Map<String, dynamic> responseData = response.data;
      List<dynamic> purchaseOrdersData = responseData['data']['pagingData'];

      return purchaseOrdersData
          .map((e) => PurchaseOrderResponseDto.fromJson(e))
          .toList();
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception(e.response!.data['message']);
      } else {
        throw Exception(e.message);
      }
    }
  }
}
