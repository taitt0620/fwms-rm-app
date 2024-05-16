import 'package:dio/dio.dart';
import 'package:fwms_rm_app/features/purchase_order/models/purchase_order.dart';

class PurchaseOrderApiClient {
  final Dio dio;

  PurchaseOrderApiClient(this.dio);

  /// fetch all purchase orders
  Future<List<PurchaseOrder>> fetchPurchaseOrders(
      {int pageIndex = 1, int pageSize = 10, required String token}) async {
    try {
      Response response = await dio.get(
        '/purchase-order',
        queryParameters: {
          'pageIndex': pageIndex,
          'pageSize': pageSize,
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        // print(response.data['data']['pagingData']);
        final data = response.data['data']['pagingData'] as List<dynamic>;
        final purchaseOrders =
            data.map((item) => PurchaseOrder.fromJson(item)).toList();
        purchaseOrders.sort((a, b) => b.dateCreate.compareTo(a.dateCreate));
        return purchaseOrders;
      } else {
        throw Exception('Failed to fetch purchase orders');
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
