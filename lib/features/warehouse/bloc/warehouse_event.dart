part of 'warehouse_bloc.dart';

abstract class WarehouseEvent extends Equatable {
  const WarehouseEvent();

  @override
  List<Object> get props => [];
}

class FetchWarehouseDetailEvent extends WarehouseEvent {
  final String id;

  const FetchWarehouseDetailEvent(this.id);
  @override
  List<Object> get props => [];
}
