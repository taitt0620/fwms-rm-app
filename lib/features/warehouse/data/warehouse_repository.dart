import 'package:fwms_rm_app/features/auth/data/auth_local_data_source.dart';
import 'package:fwms_rm_app/features/warehouse/data/warehouse_api_client.dart';
import 'package:fwms_rm_app/features/warehouse/dtos/warehouse_dto.dart';

class WarehouseRepository {
  final WarehouseApiClient warehouseApiClient;
  final AuthLocalDataSource authLocalDataSource;

  WarehouseRepository(
      {required this.warehouseApiClient, required this.authLocalDataSource});

  Future<WarehouseDto> fetchWarehouseDetail(String id) async {
    try {
      final token = await authLocalDataSource.getToken();
      if (token == null) {
        throw Exception('Token is null');
      }
      final warehouseDetail =
          await warehouseApiClient.fetchWarehouseDetail(token, id);
      return warehouseDetail;
    } catch (e) {
      throw Exception('Error fetching warehouse detail: $e');
    }
  }
}
