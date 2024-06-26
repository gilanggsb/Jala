// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Creator _$CreatorFromJson(Map<String, dynamic> json) => Creator(
      id: (json['id'] as num?)?.toInt(),
      roleId: (json['role_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
      emailVerified: json['email_verified'] as bool?,
      subscriptionTypeId: (json['subscription_type_id'] as num?)?.toInt(),
      settings: json['settings'] == null
          ? null
          : Settings.fromJson(json['settings'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      regionId: json['region_id'] as String?,
      address: json['address'],
      lastLoginAt: json['last_login_at'] == null
          ? null
          : DateTime.parse(json['last_login_at'] as String),
      deactivated: json['deactivated'] as bool?,
      expiredAt: json['expired_at'],
      phone: json['phone'] as String?,
      phoneVerified: json['phone_verified'] as bool?,
      gender: (json['gender'] as num?)?.toInt(),
      occupation: json['occupation'],
      idNumber: json['id_number'],
      idScan: json['id_scan'],
      tinNumber: json['tin_number'],
      tinScan: json['tin_scan'],
      birthdate: json['birthdate'],
      company: json['company'],
      companyAddress: json['company_address'],
      position: json['position'],
      monthlyIncome: json['monthly_income'],
      incomeSource: json['income_source'],
      buyer: json['buyer'] as bool?,
      phoneCountry: json['phone_country'] as String?,
      country: json['country'] as String?,
      interest: json['interest'] as String?,
      unsubscribeEmailAt: json['unsubscribe_email_at'],
      freshchatRestoreId: json['freshchat_restore_id'],
      allowCreateClient: json['allow_create_client'] as bool?,
      allowCreateToken: json['allow_create_token'] as bool?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      state: json['state'] == null
          ? null
          : ShrimpState.fromJson(json['state'] as Map<String, dynamic>),
      familyCardNumber: json['family_card_number'],
      familyCardScan: json['family_card_scan'],
      telegramId: json['telegram_id'],
      genderName: json['gender_name'] as String?,
      expiredDate: json['expired_date'],
      expiredTime: json['expired_time'],
      upcomingBirthdate: json['upcoming_birthdate'],
    );

Map<String, dynamic> _$CreatorToJson(Creator instance) => <String, dynamic>{
      'id': instance.id,
      'role_id': instance.roleId,
      'name': instance.name,
      'email': instance.email,
      'avatar': instance.avatar,
      'email_verified': instance.emailVerified,
      'subscription_type_id': instance.subscriptionTypeId,
      'settings': instance.settings?.toJson(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'region_id': instance.regionId,
      'address': instance.address,
      'last_login_at': instance.lastLoginAt?.toIso8601String(),
      'deactivated': instance.deactivated,
      'expired_at': instance.expiredAt,
      'phone': instance.phone,
      'phone_verified': instance.phoneVerified,
      'gender': instance.gender,
      'occupation': instance.occupation,
      'id_number': instance.idNumber,
      'id_scan': instance.idScan,
      'tin_number': instance.tinNumber,
      'tin_scan': instance.tinScan,
      'birthdate': instance.birthdate,
      'company': instance.company,
      'company_address': instance.companyAddress,
      'position': instance.position,
      'monthly_income': instance.monthlyIncome,
      'income_source': instance.incomeSource,
      'buyer': instance.buyer,
      'phone_country': instance.phoneCountry,
      'country': instance.country,
      'interest': instance.interest,
      'unsubscribe_email_at': instance.unsubscribeEmailAt,
      'freshchat_restore_id': instance.freshchatRestoreId,
      'allow_create_client': instance.allowCreateClient,
      'allow_create_token': instance.allowCreateToken,
      'interests': instance.interests,
      'state': instance.state?.toJson(),
      'family_card_number': instance.familyCardNumber,
      'family_card_scan': instance.familyCardScan,
      'telegram_id': instance.telegramId,
      'gender_name': instance.genderName,
      'expired_date': instance.expiredDate,
      'expired_time': instance.expiredTime,
      'upcoming_birthdate': instance.upcomingBirthdate,
    };

Map<String, dynamic> _$$CreatorImplToJson(_$CreatorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roleId': instance.roleId,
      'name': instance.name,
      'email': instance.email,
      'avatar': instance.avatar,
      'emailVerified': instance.emailVerified,
      'subscriptionTypeId': instance.subscriptionTypeId,
      'settings': instance.settings,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'regionId': instance.regionId,
      'address': instance.address,
      'lastLoginAt': instance.lastLoginAt?.toIso8601String(),
      'deactivated': instance.deactivated,
      'expiredAt': instance.expiredAt,
      'phone': instance.phone,
      'phoneVerified': instance.phoneVerified,
      'gender': instance.gender,
      'occupation': instance.occupation,
      'idNumber': instance.idNumber,
      'idScan': instance.idScan,
      'tinNumber': instance.tinNumber,
      'tinScan': instance.tinScan,
      'birthdate': instance.birthdate,
      'company': instance.company,
      'companyAddress': instance.companyAddress,
      'position': instance.position,
      'monthlyIncome': instance.monthlyIncome,
      'incomeSource': instance.incomeSource,
      'buyer': instance.buyer,
      'phoneCountry': instance.phoneCountry,
      'country': instance.country,
      'interest': instance.interest,
      'unsubscribeEmailAt': instance.unsubscribeEmailAt,
      'freshchatRestoreId': instance.freshchatRestoreId,
      'allowCreateClient': instance.allowCreateClient,
      'allowCreateToken': instance.allowCreateToken,
      'interests': instance.interests,
      'state': instance.state,
      'familyCardNumber': instance.familyCardNumber,
      'familyCardScan': instance.familyCardScan,
      'telegramId': instance.telegramId,
      'genderName': instance.genderName,
      'expiredDate': instance.expiredDate,
      'expiredTime': instance.expiredTime,
      'upcomingBirthdate': instance.upcomingBirthdate,
    };
