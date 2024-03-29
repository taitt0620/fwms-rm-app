import 'package:dio/dio.dart';
import 'package:fwms_rm_app/features/purchase_order/dtos/purchase_order_response_dto.dart';

class PurchaseOrderApiClient {
  final Dio dio;

  PurchaseOrderApiClient(this.dio);

  Future<List<PurchaseOrderResponseDto>> fetchPurchaseOrders() async {
    try {
      Response response = await dio.get('/purchase-orders');
      List<dynamic> value = response.data;
      return value.map((e) => PurchaseOrderResponseDto.fromJson(e)).toList();
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception(e.response!.data['message']);
      } else {
        throw Exception(e.message);
      }
    }
  }
}
