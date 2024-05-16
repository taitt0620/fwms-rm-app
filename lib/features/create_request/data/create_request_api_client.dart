import 'package:dio/dio.dart';
import 'package:fwms_rm_app/features/create_request/models/request_purchase_orders.dart';

class CreateRequestApiClient {
  final Dio dio;

  CreateRequestApiClient(this.dio);

  Future<List<RequestPurchaseOrders>> fetchRequestPurchaseOrders(
      {required int index,
      required String warehouseId,
      required String token}) async {
    try {
      final response = await dio.get(
        '/request/purchase-orders?requestTitle=$index&warehouseId=$warehouseId',
        queryParameters: {
          'requestTitle': index,
          'warehouseId': warehouseId,
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      if (response.statusCode == 200) {
        final data = response.data['data'] as List<dynamic>?;
        print(response.data);
        if (data != null) {
          return data
              .map((item) {
                // Kiểm tra xem item có phải là Map không
                if (item is Map<String, dynamic>) {
                  final purchaseOrderPhases =
                      item['purchaseOrderPhases'] as List<dynamic>?;

                  if (purchaseOrderPhases != null) {
                    return RequestPurchaseOrders.fromJson(item);
                  } else {
                    // Xử lý khi purchaseOrderPhases là null
                    return RequestPurchaseOrders.fromJson(
                        {...item, 'purchaseOrderPhases': []});
                  }
                } else {
                  // Xử lý khi item không phải là Map (ví dụ: là null hoặc kiểu dữ liệu khác)
                  return null;
                }
              })
              .whereType<RequestPurchaseOrders>()
              .toList();
        } else {
          return [];
        }
      } else if (response.statusCode == 400) {
        throw Exception('Request already exists');
      } else {
        throw Exception('Failed to fetch purchase orders');
      }
    } on DioException catch (e) {
      if (e.response!.statusCode == 400) {
        throw DioException(
          requestOptions: e.requestOptions,
          message: 'Request already exists',
        );
      } else if (e.response != null) {
        throw DioException(
          requestOptions: e.requestOptions,
          error: e.response!.data['message'],
        );
      } else {
        throw DioException(
          requestOptions: e.requestOptions,
          error: e.message,
        );
      }
    }
  }

  Future<void> createRequest(
      {required int title,
      required String warehouseId,
      required String relatedInformation,
      required int phase,
      required String description,
      required String token}) async {
    try {
      final response = await dio.post(
        '/request',
        data: FormData.fromMap(
          {
            'Title': int.parse(title.toString()),
            'Description': description,
            'RelatedInformation': relatedInformation,
            'Phase': int.parse(phase.toString()),
            'WarehouseId': warehouseId,
          },
        ),
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
            // 'Content-Type': 'multipart/form-data',
          },
          contentType: Headers.multipartFormDataContentType,
        ),
      );
      if (response.statusCode == 400) {
        throw Exception('Failed to create request');
      }
      return response.data;
    } on DioException catch (e) {
      if (e.response != null) {
        throw DioException(
          requestOptions: e.requestOptions,
          error: e.response!.data['message'],
        );
      } else {
        throw DioException(
          requestOptions: e.requestOptions,
          error: e.message,
        );
      }
    }
  }
}
