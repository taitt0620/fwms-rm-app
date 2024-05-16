import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwms_rm_app/features/warehouse/data/warehouse_repository.dart';
import 'package:fwms_rm_app/features/warehouse/models/warehouse.dart';

part 'warehouse_event.dart';
part 'warehouse_state.dart';
part 'warehouse_bloc.freezed.dart';

class WarehouseBloc extends Bloc<WarehouseEvent, WarehouseState> {
  final WarehouseRepository repo;

  WarehouseBloc(this.repo) : super(const _Initial()) {
    on<_FetchWarehouse>(_onFetchWarehouseDetailStarted);
    on<_FetchWarehouses>(_onFetchWarehousesDetailStarted);
  }

  FutureOr<void> _onFetchWarehouseDetailStarted(
      _FetchWarehouse event, Emitter<WarehouseState> emit) async {
    emit(const _DetailLoading());
    try {
      final warehouseDetail = await repo.fetchWarehouseDetail(event.id);
      emit(_DetailLoaded(warehouse: warehouseDetail));
    } catch (error) {
      emit(_DetailError(error.toString()));
    }
  }

  FutureOr<void> _onFetchWarehousesDetailStarted(
      _FetchWarehouses event, Emitter<WarehouseState> emit) async {
    emit(const _Loading());
    try {
      final warehouseDetail = await repo.fetchWarehouse();
      emit(_Loaded(warehouses: warehouseDetail));
      if (warehouseDetail.isEmpty) {
        emit(const _Empty('No warehouse found'));
      }
    } catch (error) {
      emit(_Error(error.toString()));
    }
  }
}
