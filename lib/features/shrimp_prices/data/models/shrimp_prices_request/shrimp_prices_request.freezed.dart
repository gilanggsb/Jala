// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shrimp_prices_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShrimpPricesRequest {
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'with')
  List<String>? get shrimpWith => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_id')
  String? get regionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShrimpPricesRequestCopyWith<ShrimpPricesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShrimpPricesRequestCopyWith<$Res> {
  factory $ShrimpPricesRequestCopyWith(
          ShrimpPricesRequest value, $Res Function(ShrimpPricesRequest) then) =
      _$ShrimpPricesRequestCopyWithImpl<$Res, ShrimpPricesRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'per_page') int? perPage,
      int? page,
      @JsonKey(name: 'with') List<String>? shrimpWith,
      @JsonKey(name: 'region_id') String? regionId});
}

/// @nodoc
class _$ShrimpPricesRequestCopyWithImpl<$Res, $Val extends ShrimpPricesRequest>
    implements $ShrimpPricesRequestCopyWith<$Res> {
  _$ShrimpPricesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? perPage = freezed,
    Object? page = freezed,
    Object? shrimpWith = freezed,
    Object? regionId = freezed,
  }) {
    return _then(_value.copyWith(
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      shrimpWith: freezed == shrimpWith
          ? _value.shrimpWith
          : shrimpWith // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      regionId: freezed == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShrimpPricesRequestImplCopyWith<$Res>
    implements $ShrimpPricesRequestCopyWith<$Res> {
  factory _$$ShrimpPricesRequestImplCopyWith(_$ShrimpPricesRequestImpl value,
          $Res Function(_$ShrimpPricesRequestImpl) then) =
      __$$ShrimpPricesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'per_page') int? perPage,
      int? page,
      @JsonKey(name: 'with') List<String>? shrimpWith,
      @JsonKey(name: 'region_id') String? regionId});
}

/// @nodoc
class __$$ShrimpPricesRequestImplCopyWithImpl<$Res>
    extends _$ShrimpPricesRequestCopyWithImpl<$Res, _$ShrimpPricesRequestImpl>
    implements _$$ShrimpPricesRequestImplCopyWith<$Res> {
  __$$ShrimpPricesRequestImplCopyWithImpl(_$ShrimpPricesRequestImpl _value,
      $Res Function(_$ShrimpPricesRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? perPage = freezed,
    Object? page = freezed,
    Object? shrimpWith = freezed,
    Object? regionId = freezed,
  }) {
    return _then(_$ShrimpPricesRequestImpl(
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      shrimpWith: freezed == shrimpWith
          ? _value._shrimpWith
          : shrimpWith // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      regionId: freezed == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$ShrimpPricesRequestImpl implements _ShrimpPricesRequest {
  const _$ShrimpPricesRequestImpl(
      {@JsonKey(name: 'per_page') this.perPage,
      this.page,
      @JsonKey(name: 'with') final List<String>? shrimpWith,
      @JsonKey(name: 'region_id') this.regionId})
      : _shrimpWith = shrimpWith;

  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  final int? page;
  final List<String>? _shrimpWith;
  @override
  @JsonKey(name: 'with')
  List<String>? get shrimpWith {
    final value = _shrimpWith;
    if (value == null) return null;
    if (_shrimpWith is EqualUnmodifiableListView) return _shrimpWith;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'region_id')
  final String? regionId;

  @override
  String toString() {
    return 'ShrimpPricesRequest(perPage: $perPage, page: $page, shrimpWith: $shrimpWith, regionId: $regionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShrimpPricesRequestImpl &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality()
                .equals(other._shrimpWith, _shrimpWith) &&
            (identical(other.regionId, regionId) ||
                other.regionId == regionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, perPage, page,
      const DeepCollectionEquality().hash(_shrimpWith), regionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShrimpPricesRequestImplCopyWith<_$ShrimpPricesRequestImpl> get copyWith =>
      __$$ShrimpPricesRequestImplCopyWithImpl<_$ShrimpPricesRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShrimpPricesRequestImplToJson(
      this,
    );
  }
}

abstract class _ShrimpPricesRequest implements ShrimpPricesRequest {
  const factory _ShrimpPricesRequest(
          {@JsonKey(name: 'per_page') final int? perPage,
          final int? page,
          @JsonKey(name: 'with') final List<String>? shrimpWith,
          @JsonKey(name: 'region_id') final String? regionId}) =
      _$ShrimpPricesRequestImpl;

  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  int? get page;
  @override
  @JsonKey(name: 'with')
  List<String>? get shrimpWith;
  @override
  @JsonKey(name: 'region_id')
  String? get regionId;
  @override
  @JsonKey(ignore: true)
  _$$ShrimpPricesRequestImplCopyWith<_$ShrimpPricesRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
