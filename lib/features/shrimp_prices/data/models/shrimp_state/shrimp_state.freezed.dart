// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shrimp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShrimpState {
  DateTime? get phoneVerificationExpiredAt =>
      throw _privateConstructorUsedError;
  dynamic get mailjetId => throw _privateConstructorUsedError;
  bool? get partner => throw _privateConstructorUsedError;
  bool? get consultationTourComplete => throw _privateConstructorUsedError;
  dynamic get phoneVerificationOtpSent => throw _privateConstructorUsedError;
  DateTime? get phoneUpdatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShrimpStateCopyWith<ShrimpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShrimpStateCopyWith<$Res> {
  factory $ShrimpStateCopyWith(
          ShrimpState value, $Res Function(ShrimpState) then) =
      _$ShrimpStateCopyWithImpl<$Res, ShrimpState>;
  @useResult
  $Res call(
      {DateTime? phoneVerificationExpiredAt,
      dynamic mailjetId,
      bool? partner,
      bool? consultationTourComplete,
      dynamic phoneVerificationOtpSent,
      DateTime? phoneUpdatedAt});
}

/// @nodoc
class _$ShrimpStateCopyWithImpl<$Res, $Val extends ShrimpState>
    implements $ShrimpStateCopyWith<$Res> {
  _$ShrimpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneVerificationExpiredAt = freezed,
    Object? mailjetId = freezed,
    Object? partner = freezed,
    Object? consultationTourComplete = freezed,
    Object? phoneVerificationOtpSent = freezed,
    Object? phoneUpdatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      phoneVerificationExpiredAt: freezed == phoneVerificationExpiredAt
          ? _value.phoneVerificationExpiredAt
          : phoneVerificationExpiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mailjetId: freezed == mailjetId
          ? _value.mailjetId
          : mailjetId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      partner: freezed == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as bool?,
      consultationTourComplete: freezed == consultationTourComplete
          ? _value.consultationTourComplete
          : consultationTourComplete // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneVerificationOtpSent: freezed == phoneVerificationOtpSent
          ? _value.phoneVerificationOtpSent
          : phoneVerificationOtpSent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phoneUpdatedAt: freezed == phoneUpdatedAt
          ? _value.phoneUpdatedAt
          : phoneUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShrimpStateImplCopyWith<$Res>
    implements $ShrimpStateCopyWith<$Res> {
  factory _$$ShrimpStateImplCopyWith(
          _$ShrimpStateImpl value, $Res Function(_$ShrimpStateImpl) then) =
      __$$ShrimpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? phoneVerificationExpiredAt,
      dynamic mailjetId,
      bool? partner,
      bool? consultationTourComplete,
      dynamic phoneVerificationOtpSent,
      DateTime? phoneUpdatedAt});
}

/// @nodoc
class __$$ShrimpStateImplCopyWithImpl<$Res>
    extends _$ShrimpStateCopyWithImpl<$Res, _$ShrimpStateImpl>
    implements _$$ShrimpStateImplCopyWith<$Res> {
  __$$ShrimpStateImplCopyWithImpl(
      _$ShrimpStateImpl _value, $Res Function(_$ShrimpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneVerificationExpiredAt = freezed,
    Object? mailjetId = freezed,
    Object? partner = freezed,
    Object? consultationTourComplete = freezed,
    Object? phoneVerificationOtpSent = freezed,
    Object? phoneUpdatedAt = freezed,
  }) {
    return _then(_$ShrimpStateImpl(
      phoneVerificationExpiredAt: freezed == phoneVerificationExpiredAt
          ? _value.phoneVerificationExpiredAt
          : phoneVerificationExpiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mailjetId: freezed == mailjetId
          ? _value.mailjetId
          : mailjetId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      partner: freezed == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as bool?,
      consultationTourComplete: freezed == consultationTourComplete
          ? _value.consultationTourComplete
          : consultationTourComplete // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneVerificationOtpSent: freezed == phoneVerificationOtpSent
          ? _value.phoneVerificationOtpSent
          : phoneVerificationOtpSent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phoneUpdatedAt: freezed == phoneUpdatedAt
          ? _value.phoneUpdatedAt
          : phoneUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$ShrimpStateImpl implements _ShrimpState {
  const _$ShrimpStateImpl(
      {this.phoneVerificationExpiredAt,
      this.mailjetId,
      this.partner,
      this.consultationTourComplete,
      this.phoneVerificationOtpSent,
      this.phoneUpdatedAt});

  @override
  final DateTime? phoneVerificationExpiredAt;
  @override
  final dynamic mailjetId;
  @override
  final bool? partner;
  @override
  final bool? consultationTourComplete;
  @override
  final dynamic phoneVerificationOtpSent;
  @override
  final DateTime? phoneUpdatedAt;

  @override
  String toString() {
    return 'ShrimpState(phoneVerificationExpiredAt: $phoneVerificationExpiredAt, mailjetId: $mailjetId, partner: $partner, consultationTourComplete: $consultationTourComplete, phoneVerificationOtpSent: $phoneVerificationOtpSent, phoneUpdatedAt: $phoneUpdatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShrimpStateImpl &&
            (identical(other.phoneVerificationExpiredAt,
                    phoneVerificationExpiredAt) ||
                other.phoneVerificationExpiredAt ==
                    phoneVerificationExpiredAt) &&
            const DeepCollectionEquality().equals(other.mailjetId, mailjetId) &&
            (identical(other.partner, partner) || other.partner == partner) &&
            (identical(
                    other.consultationTourComplete, consultationTourComplete) ||
                other.consultationTourComplete == consultationTourComplete) &&
            const DeepCollectionEquality().equals(
                other.phoneVerificationOtpSent, phoneVerificationOtpSent) &&
            (identical(other.phoneUpdatedAt, phoneUpdatedAt) ||
                other.phoneUpdatedAt == phoneUpdatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      phoneVerificationExpiredAt,
      const DeepCollectionEquality().hash(mailjetId),
      partner,
      consultationTourComplete,
      const DeepCollectionEquality().hash(phoneVerificationOtpSent),
      phoneUpdatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShrimpStateImplCopyWith<_$ShrimpStateImpl> get copyWith =>
      __$$ShrimpStateImplCopyWithImpl<_$ShrimpStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShrimpStateImplToJson(
      this,
    );
  }
}

abstract class _ShrimpState implements ShrimpState {
  const factory _ShrimpState(
      {final DateTime? phoneVerificationExpiredAt,
      final dynamic mailjetId,
      final bool? partner,
      final bool? consultationTourComplete,
      final dynamic phoneVerificationOtpSent,
      final DateTime? phoneUpdatedAt}) = _$ShrimpStateImpl;

  @override
  DateTime? get phoneVerificationExpiredAt;
  @override
  dynamic get mailjetId;
  @override
  bool? get partner;
  @override
  bool? get consultationTourComplete;
  @override
  dynamic get phoneVerificationOtpSent;
  @override
  DateTime? get phoneUpdatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ShrimpStateImplCopyWith<_$ShrimpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
