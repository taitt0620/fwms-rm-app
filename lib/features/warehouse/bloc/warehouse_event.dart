part of 'warehouse_bloc.dart';

@freezed
class WarehouseEvent with _$WarehouseEvent {
  const factory WarehouseEvent.started() = _Started;
  const factory WarehouseEvent.loadMore() = _LoadMore;
  const factory WarehouseEvent.refresh() = _Refresh;
  const factory WarehouseEvent.fetchWarehouse(String id) = _FetchWarehouse;
  const factory WarehouseEvent.fetchWarehouses() = _FetchWarehouses;
}