part of 'diseases_bloc.dart';

@freezed
class DiseasesEvent with _$DiseasesEvent {
  const factory DiseasesEvent.started() = _Started;
  const factory DiseasesEvent.getData() = _GetData;
  const factory DiseasesEvent.nextPage() = _NextPage;
  const factory DiseasesEvent.prevPage() = _PrevPage;
}
