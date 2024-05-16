import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwms_rm_app/features/request/data/request_repository.dart';
import 'package:fwms_rm_app/features/request/models/relate_information.dart';
import 'package:fwms_rm_app/features/request/models/request.dart';

part 'request_event.dart';
part 'request_state.dart';
part 'request_bloc.freezed.dart';

class RequestBloc extends Bloc<RequestEvent, RequestState> {
  final RequestRepository repo;
  int _currentPage = 0;
  bool _hasReachedMax = false;
  RequestBloc(this.repo) : super(const _Initial()) {
    on<RequestEvent>(_onHandleRequestStarted);
    // on<RequestEvent>(_onHandleRelateInformationStarted);
    on<_FetchRequestsByStatusAndTitle>(_onFetchRequestsByStatusAndTitleStarted);
    on<_FetchRequestsByStatuses>(_onFetchRequestByStatusesStarted);
  }

  FutureOr<void> _onHandleRequestStarted(
      RequestEvent event, Emitter<RequestState> emit) async {
    if (event is _Started || event is _Refresh) {
      _currentPage = 1;
      _hasReachedMax = false;
      emit(const RequestState.loading());
      try {
        final requests =
            await repo.fetchRequests(pageIndex: _currentPage, pageSize: 10);
        emit(RequestState.loaded(
            requests: requests, hasReachedMax: _hasReachedMax));
        _currentPage++;
      } catch (error) {
        emit(RequestState.error(error.toString()));
      }
    } else if (event is _LoadMore && !_hasReachedMax) {
      emit(const RequestState.loading());
      try {
        final requests =
            await repo.fetchRequests(pageIndex: _currentPage, pageSize: 10);
        final hasReachedMax = requests.length < 10;
        emit(RequestState.loaded(
            requests: requests, hasReachedMax: hasReachedMax));
        if (!hasReachedMax) _currentPage++;
      } catch (error) {
        emit(RequestState.error(error.toString()));
      }
    } else if (event is _FetchRelateInformation) {
      emit(const RequestState.relateInformationLoading());
      try {
        final relateInformation = await repo.fetchRelateInformation(
            requestId: event.requestId, poCode: event.poCode);
        emit(RequestState.relateInformationLoaded(
            relateInformation: relateInformation));
      } catch (error) {
        emit(RequestState.relateInformationError(error.toString()));
      }
    }
  }

  FutureOr<void> _onFetchRequestsByStatusAndTitleStarted(
      _FetchRequestsByStatusAndTitle event, Emitter<RequestState> emit) async {
    emit(const _RequestsByStatusAndTitleLoading());
    try {
      if (event.status.isNotEmpty && event.title.isNotEmpty) {
        final requests = await repo.getRequestsByStatusAndTitle(
            status: event.status, title: event.title);
        if (requests.isEmpty) {
          emit(const _RequestsByStatusAndTitleEmpty(
              'Please wait for a request to be approved'));
        }
        emit(_RequestsByStatusAndTitleLoaded(requests: requests));
      } else {
        emit(const _RequestsByStatusAndTitleError('Status or title is null'));
      }
    } catch (e) {
      emit(_RequestsByStatusAndTitleError(e.toString()));
    }
  }

  FutureOr<void> _onFetchRequestByStatusesStarted(
      _FetchRequestsByStatuses event, Emitter<RequestState> emit) async {
    emit(const _RequestsByStatusesLoading());
    try {
      if (event.statuses.isNotEmpty) {
        final requests = await repo.getRequestsByStatuses(event.statuses);
        if (requests.isEmpty) {
          emit(const _RequestsByStatusesEmpty(
              'There are no new requests yet, try creating one'));
        }
        emit(_RequestsByStatusesLoaded(requests: requests));
      } else {
        emit(const _RequestsByStatusesError('Statuses is null'));
      }
    } catch (e) {
      emit(_RequestsByStatusesError(e.toString()));
    }
  }
}
