part of 'diseases_bloc.dart';

@freezed
class DiseasesState with _$DiseasesState {
  const factory DiseasesState.initial() = _Initial;
  const factory DiseasesState.loading() = _Loading;
  const factory DiseasesState.success(List<Disease> diseases,
      {bool? isLoading, bool? hasReachedEnd}) = _Success;
  const factory DiseasesState.failed(String message) = _Error;
}
