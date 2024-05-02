// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shrimp_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShrimpState _$ShrimpStateFromJson(Map<String, dynamic> json) => ShrimpState(
      phoneVerificationExpiredAt: json['phone_verification_expired_at'] == null
          ? null
          : DateTime.parse(json['phone_verification_expired_at'] as String),
      mailjetId: json['mailjet_id'],
      partner: json['partner'] as bool?,
      consultationTourComplete: json['consultation_tour_complete'] as bool?,
      phoneVerificationOtpSent: json['phone_verification_otp_sent'],
      phoneUpdatedAt: json['phone_updated_at'] == null
          ? null
          : DateTime.parse(json['phone_updated_at'] as String),
    );

Map<String, dynamic> _$ShrimpStateToJson(ShrimpState instance) =>
    <String, dynamic>{
      'phone_verification_expired_at':
          instance.phoneVerificationExpiredAt?.toIso8601String(),
      'mailjet_id': instance.mailjetId,
      'partner': instance.partner,
      'consultation_tour_complete': instance.consultationTourComplete,
      'phone_verification_otp_sent': instance.phoneVerificationOtpSent,
      'phone_updated_at': instance.phoneUpdatedAt?.toIso8601String(),
    };

Map<String, dynamic> _$$ShrimpStateImplToJson(_$ShrimpStateImpl instance) =>
    <String, dynamic>{
      'phoneVerificationExpiredAt':
          instance.phoneVerificationExpiredAt?.toIso8601String(),
      'mailjetId': instance.mailjetId,
      'partner': instance.partner,
      'consultationTourComplete': instance.consultationTourComplete,
      'phoneVerificationOtpSent': instance.phoneVerificationOtpSent,
      'phoneUpdatedAt': instance.phoneUpdatedAt?.toIso8601String(),
    };
