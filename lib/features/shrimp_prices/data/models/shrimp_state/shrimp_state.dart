import 'package:freezed_annotation/freezed_annotation.dart';

part 'shrimp_state.freezed.dart';
part 'shrimp_state.g.dart';

@Freezed(fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ShrimpState with _$ShrimpState {
  const factory ShrimpState({
    DateTime? phoneVerificationExpiredAt,
    dynamic mailjetId,
    bool? partner,
    bool? consultationTourComplete,
    dynamic phoneVerificationOtpSent,
    DateTime? phoneUpdatedAt,
  }) = _ShrimpState;

  factory ShrimpState.fromJson(Map<String, dynamic> json) =>
      _$ShrimpStateFromJson(json);
}
