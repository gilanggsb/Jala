import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features.dart';

part 'creator.freezed.dart';
part 'creator.g.dart';

@Freezed(fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Creator with _$Creator {
  const factory Creator({
    int? id,
    int? roleId,
    String? name,
    String? email,
    String? avatar,
    bool? emailVerified,
    int? subscriptionTypeId,
    Settings? settings,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? regionId,
    dynamic address,
    DateTime? lastLoginAt,
    bool? deactivated,
    dynamic expiredAt,
    String? phone,
    bool? phoneVerified,
    int? gender,
    dynamic occupation,
    dynamic idNumber,
    dynamic idScan,
    dynamic tinNumber,
    dynamic tinScan,
    dynamic birthdate,
    dynamic company,
    dynamic companyAddress,
    dynamic position,
    dynamic monthlyIncome,
    dynamic incomeSource,
    bool? buyer,
    String? phoneCountry,
    String? country,
    String? interest,
    dynamic unsubscribeEmailAt,
    dynamic freshchatRestoreId,
    bool? allowCreateClient,
    bool? allowCreateToken,
    List<String>? interests,
    ShrimpState? state,
    dynamic familyCardNumber,
    dynamic familyCardScan,
    dynamic telegramId,
    String? genderName,
    dynamic expiredDate,
    dynamic expiredTime,
    dynamic upcomingBirthdate,
  }) = _Creator;

  factory Creator.fromJson(Map<String, dynamic> json) =>
      _$CreatorFromJson(json);
}
