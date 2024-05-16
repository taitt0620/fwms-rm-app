part of 'warehouse_bloc.dart';

@freezed
class WarehouseState with _$WarehouseState {
  const factory WarehouseState.initial() = _Initial;
  const factory WarehouseState.loading() = _Loading;
  const factory WarehouseState.loaded({required List<Warehouse> warehouses}) =
      _Loaded;
  const factory WarehouseState.error(String? error) = _Error;
  const factory WarehouseState.empty(String? message) = _Empty;
  const factory WarehouseState.detailLoading() = _DetailLoading;
  const factory WarehouseState.detailLoaded({required Warehouse warehouse}) =
      _DetailLoaded;
  const factory WarehouseState.detailError(String? error) = _DetailError;
}
