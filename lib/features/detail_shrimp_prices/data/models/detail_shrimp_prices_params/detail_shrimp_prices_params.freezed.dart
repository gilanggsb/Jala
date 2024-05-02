// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_shrimp_prices_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailShrimpPricesParams _$DetailShrimpPricesParamsFromJson(
    Map<String, dynamic> json) {
  return _DetailShrimpPricesParams.fromJson(json);
}

/// @nodoc
mixin _$DetailShrimpPricesParams {
  int get id => throw _privateConstructorUsedError;
  ShrimpPricesRequest get shrimpPricesRequest =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailShrimpPricesParamsCopyWith<DetailShrimpPricesParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailShrimpPricesParamsCopyWith<$Res> {
  factory $DetailShrimpPricesParamsCopyWith(DetailShrimpPricesParams value,
          $Res Function(DetailShrimpPricesParams) then) =
      _$DetailShrimpPricesParamsCopyWithImpl<$Res, DetailShrimpPricesParams>;
  @useResult
  $Res call({int id, ShrimpPricesRequest shrimpPricesRequest});

  $ShrimpPricesRequestCopyWith<$Res> get shrimpPricesRequest;
}

/// @nodoc
class _$DetailShrimpPricesParamsCopyWithImpl<$Res,
        $Val extends DetailShrimpPricesParams>
    implements $DetailShrimpPricesParamsCopyWith<$Res> {
  _$DetailShrimpPricesParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? shrimpPricesRequest = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      shrimpPricesRequest: null == shrimpPricesRequest
          ? _value.shrimpPricesRequest
          : shrimpPricesRequest // ignore: cast_nullable_to_non_nullable
              as ShrimpPricesRequest,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShrimpPricesRequestCopyWith<$Res> get shrimpPricesRequest {
    return $ShrimpPricesRequestCopyWith<$Res>(_value.shrimpPricesRequest,
        (value) {
      return _then(_value.copyWith(shrimpPricesRequest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailShrimpPricesParamsImplCopyWith<$Res>
    implements $DetailShrimpPricesParamsCopyWith<$Res> {
  factory _$$DetailShrimpPricesParamsImplCopyWith(
          _$DetailShrimpPricesParamsImpl value,
          $Res Function(_$DetailShrimpPricesParamsImpl) then) =
      __$$DetailShrimpPricesParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, ShrimpPricesRequest shrimpPricesRequest});

  @override
  $ShrimpPricesRequestCopyWith<$Res> get shrimpPricesRequest;
}

/// @nodoc
class __$$DetailShrimpPricesParamsImplCopyWithImpl<$Res>
    extends _$DetailShrimpPricesParamsCopyWithImpl<$Res,
        _$DetailShrimpPricesParamsImpl>
    implements _$$DetailShrimpPricesParamsImplCopyWith<$Res> {
  __$$DetailShrimpPricesParamsImplCopyWithImpl(
      _$DetailShrimpPricesParamsImpl _value,
      $Res Function(_$DetailShrimpPricesParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? shrimpPricesRequest = null,
  }) {
    return _then(_$DetailShrimpPricesParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      shrimpPricesRequest: null == shrimpPricesRequest
          ? _value.shrimpPricesRequest
          : shrimpPricesRequest // ignore: cast_nullable_to_non_nullable
              as ShrimpPricesRequest,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailShrimpPricesParamsImpl implements _DetailShrimpPricesParams {
  const _$DetailShrimpPricesParamsImpl(
      {required this.id, required this.shrimpPricesRequest});

  factory _$DetailShrimpPricesParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailShrimpPricesParamsImplFromJson(json);

  @override
  final int id;
  @override
  final ShrimpPricesRequest shrimpPricesRequest;

  @override
  String toString() {
    return 'DetailShrimpPricesParams(id: $id, shrimpPricesRequest: $shrimpPricesRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailShrimpPricesParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.shrimpPricesRequest, shrimpPricesRequest) ||
                other.shrimpPricesRequest == shrimpPricesRequest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, shrimpPricesRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailShrimpPricesParamsImplCopyWith<_$DetailShrimpPricesParamsImpl>
      get copyWith => __$$DetailShrimpPricesParamsImplCopyWithImpl<
          _$DetailShrimpPricesParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailShrimpPricesParamsImplToJson(
      this,
    );
  }
}

abstract class _DetailShrimpPricesParams implements DetailShrimpPricesParams {
  const factory _DetailShrimpPricesParams(
          {required final int id,
          required final ShrimpPricesRequest shrimpPricesRequest}) =
      _$DetailShrimpPricesParamsImpl;

  factory _DetailShrimpPricesParams.fromJson(Map<String, dynamic> json) =
      _$DetailShrimpPricesParamsImpl.fromJson;

  @override
  int get id;
  @override
  ShrimpPricesRequest get shrimpPricesRequest;
  @override
  @JsonKey(ignore: true)
  _$$DetailShrimpPricesParamsImplCopyWith<_$DetailShrimpPricesParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
