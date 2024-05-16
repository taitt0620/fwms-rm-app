part of 'request_bloc.dart';

@freezed
class RequestEvent with _$RequestEvent {
  const factory RequestEvent.started() = _Started;
  const factory RequestEvent.loadMore() = _LoadMore; // Add load more
  const factory RequestEvent.refresh() = _Refresh;

  const factory RequestEvent.fetchRelateInformation(String requestId, String poCode) =
      _FetchRelateInformation;
  
  const factory RequestEvent.fetchRequestsByStatusAndTitle(String status, String title) =
      _FetchRequestsByStatusAndTitle;

  const factory RequestEvent.fetchRequestsByStatuses(List<String> statuses) =
      _FetchRequestsByStatuses;
}
