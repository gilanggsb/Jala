part of 'jala_media_bloc.dart';

@freezed
class JalaMediaState with _$JalaMediaState {
  const factory JalaMediaState.initial() = _Initial;
  const factory JalaMediaState.loading() = _Loading;
  const factory JalaMediaState.success() = _Success;
  const factory JalaMediaState.failed(String message) = _Error;
}
