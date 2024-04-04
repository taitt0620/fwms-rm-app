import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:fwms_rm_app/features/request/data/request_repository.dart';
import 'package:fwms_rm_app/features/request/dtos/request_dto.dart';

part 'request_event.dart';
part 'request_state.dart';

class RequestBloc extends Bloc<RequestEvent, RequestState> {
  final RequestRepository requestRepository;
  RequestBloc(this.requestRepository) : super(RequestInitial()) {
    on<FetchRequestsEvent>(_onFetchRequests);
  }

  void _onFetchRequests(
      FetchRequestsEvent event, Emitter<RequestState> emit) async {
    try {
      emit(RequestLoading());
      final requests = await requestRepository.fetchRequests();
      emit(RequestLoaded(requests));
    } on DioException catch (e) {
      emit(RequestError('Failed to fetch requests: ${e.message}'));
    } catch (e) {
      emit(RequestError('An unexpected error occurred: ${e.toString()}'));
    }
  }
}
