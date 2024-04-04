part of 'request_bloc.dart';

sealed class RequestState extends Equatable {
  const RequestState();

  @override
  List<Object> get props => [];
}

final class RequestInitial extends RequestState {}

final class RequestLoading extends RequestState {}

final class RequestLoaded extends RequestState {
  final List<RequestDto> requests;

  const RequestLoaded(this.requests);

  @override
  List<Object> get props => [requests];
}

final class RequestError extends RequestState {
  final String message;

  const RequestError(this.message);

  @override
  List<Object> get props => [message];
}
