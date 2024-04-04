import 'package:dio/dio.dart';
import 'package:fwms_rm_app/features/warehouse/dtos/warehouse_dto.dart';

class WarehouseApiClient {
  final Dio dio;

  WarehouseApiClient(this.dio);

  /// Fetches the details of a warehouse.
  ///
  /// Throws a [DioException] if an error occurs.
  Future<WarehouseDto> fetchWarehouseDetail(String token, String id) async {
    try {
      final response = await dio.get(
        '/warehouse/$id',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      Map<String, dynamic>? responseData = response.data;
      Map<String, dynamic> warehouseData =
          Map<String, dynamic>.from(responseData?['data']);
      if (warehouseData.isNotEmpty) {
        return WarehouseDto.fromJson(warehouseData);
      }
      throw DioException(
        requestOptions: RequestOptions(path: '/warehouse/$id'),
        error: 'Invalid response data',
      );
    } on DioException catch (e) {
      if (e.response != null) {
        throw DioException(
          requestOptions: e.requestOptions,
          error: e.message,
        );
      } else {
        throw DioException(
          requestOptions: e.requestOptions,
          error: e.message ?? 'Unknown error',
        );
      }
    }
  }
}
