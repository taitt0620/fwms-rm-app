import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fwms_rm_app/features/warehouse/data/warehouse_repository.dart';
import 'package:fwms_rm_app/features/warehouse/dtos/warehouse_dto.dart';

part 'warehouse_event.dart';
part 'warehouse_state.dart';

class WarehouseBloc extends Bloc<WarehouseEvent, WarehouseState> {
  final WarehouseRepository warehouseRepository;
  WarehouseBloc(this.warehouseRepository) : super(WarehouseInitial()) {
    on<FetchWarehouseDetailEvent>(_onFetchWarehouseDetail);
  }

  void _onFetchWarehouseDetail(
      FetchWarehouseDetailEvent event, Emitter<WarehouseState> emit) async {
    try {
      emit(WarehouseLoading());
      final warehouse =
          await warehouseRepository.fetchWarehouseDetail(event.id);
      emit(WarehouseLoaded(warehouse));
    } catch (e) {
      emit(WarehouseError(e.toString()));
    }
  }
}
