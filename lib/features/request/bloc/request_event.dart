part of 'request_bloc.dart';

abstract class RequestEvent extends Equatable {
  const RequestEvent();

  @override
  List<Object> get props => [];
}

class FetchRequestsEvent extends RequestEvent {
  @override
  List<Object> get props => [];
}
