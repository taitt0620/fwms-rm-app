import 'package:dio/dio.dart';
import 'package:fwms_rm_app/features/warehouse/models/warehouse.dart';

class WarehouseApiClient {
  final Dio dio;

  WarehouseApiClient(this.dio);

  Future<Warehouse> fetchWarehouseDetail(
      {required String id, required String token}) async {
    try {
      final response = await dio.get(
        '/warehouse/$id',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      if (response.statusCode == 200) {
        final data = response.data['data'] as Map<String, dynamic>;
        return Warehouse.fromJson(data);
      } else {
        throw Exception('Failed to fetch warehouse detail');
      }
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

  Future<List<Warehouse>> fetchWarehouse ({required String token}) async {
    try {
      final response = await dio.get(
        '/warehouse',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      if (response.statusCode == 200) {
        final data = response.data['data']['pagingData'] as List<dynamic>;
        final warehouses = data.map((e) => Warehouse.fromJson(e)).toList();
        return warehouses;
      } else {
        throw Exception('Failed to fetch warehouse');
      }
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
