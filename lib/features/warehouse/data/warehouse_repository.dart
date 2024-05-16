import 'package:fwms_rm_app/features/auth/data/auth_local_data_source.dart';
import 'package:fwms_rm_app/features/warehouse/data/warehouse_api_client.dart';
import 'package:fwms_rm_app/features/warehouse/models/warehouse.dart';

class WarehouseRepository {
  final WarehouseApiClient warehouseApiClient;
  final AuthLocalDataSource authLocalDataSource;

  WarehouseRepository(
      {required this.warehouseApiClient, required this.authLocalDataSource});

  Future<Warehouse> fetchWarehouseDetail(String id) async {
    try {
      final token = await authLocalDataSource.getToken();
      if (token == null) {
        throw Exception('Token is null');
      }
      final warehouseDetail =
          await warehouseApiClient.fetchWarehouseDetail(id: id, token: token);
      return warehouseDetail;
    } catch (e) {
      throw Exception('Error fetching warehouse detail: $e');
    }
  }

  Future<List<Warehouse>> fetchWarehouse() async {
    try {
      final token = await authLocalDataSource.getToken();
      if (token == null) {
        throw Exception('Token is null');
      }
      final warehouses = await warehouseApiClient.fetchWarehouse(token: token);
      return warehouses;
    } catch (e) {
      throw Exception('Error fetching warehouse: $e');
    }
  }
}
