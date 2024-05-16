part of 'request_bloc.dart';

@freezed
class RequestState with _$RequestState {
  const factory RequestState.initial() = _Initial;
  const factory RequestState.loading() = _Loading;
  const factory RequestState.loaded({
    required List<Request> requests,
    required bool hasReachedMax,
  }) = _Loaded;
  const factory RequestState.error(String? error) = _Error;
  const factory RequestState.empty(String? message) = _Empty;

  const factory RequestState.requestsByStatusAndTitleLoaded({
    required List<Request> requests,
  }) = _RequestsByStatusAndTitleLoaded;
  const factory RequestState.requestsByStatusAndTitleLoading() =
      _RequestsByStatusAndTitleLoading;
  const factory RequestState.requestsByStatusAndTitleError(String? error) =
      _RequestsByStatusAndTitleError;
  const factory RequestState.requestsByStatusAndTitleEmpty(String? message) =
      _RequestsByStatusAndTitleEmpty;

  const factory RequestState.requestsByStatusesLoading() =
      _RequestsByStatusesLoading;
  const factory RequestState.requestsByStatusesLoaded({
    required List<Request> requests,
  }) = _RequestsByStatusesLoaded;
  const factory RequestState.requestsByStatusesError(String? error) =
      _RequestsByStatusesError;
  const factory RequestState.requestsByStatusesEmpty(String? message) =
      _RequestsByStatusesEmpty;

  const factory RequestState.relateInformationLoading() =
      _RelateInformationLoading;
  const factory RequestState.relateInformationLoaded({
    required List<RelateInformation> relateInformation,
  }) = _RelateInformationLoaded;
  const factory RequestState.relateInformationError(String? error) =
      _RelateInformationError;
}
