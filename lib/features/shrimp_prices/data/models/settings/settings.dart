import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@Freezed(fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Settings with _$Settings {
  const factory Settings({
    String? locale,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
