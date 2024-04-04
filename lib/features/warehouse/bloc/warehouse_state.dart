part of 'warehouse_bloc.dart';

/// Represents the state of the warehouse.
sealed class WarehouseState extends Equatable {
  const WarehouseState();

  @override
  List<Object> get props => [];
}

/// Represents the initial state of the warehouse.
final class WarehouseInitial extends WarehouseState {}

/// Represents the loading state of the warehouse.
final class WarehouseLoading extends WarehouseState {}

/// Represents the loaded state of the warehouse.
final class WarehouseLoaded extends WarehouseState {
  /// The loaded warehouse.
  final WarehouseDto warehouse;

  const WarehouseLoaded(this.warehouse);

  @override
  List<Object> get props => [warehouse];
}

/// Represents the error state of the warehouse.
final class WarehouseError extends WarehouseState {
  /// The error message.
  final String message;

  const WarehouseError(this.message);

  @override
  List<Object> get props => [message];
}
