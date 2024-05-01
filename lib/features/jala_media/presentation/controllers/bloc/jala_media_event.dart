part of 'jala_media_bloc.dart';

@freezed
class JalaMediaEvent with _$JalaMediaEvent {
  const factory JalaMediaEvent.started() = _Started;
  const factory JalaMediaEvent.getData() = _GetData;
}
