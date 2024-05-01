// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disease_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiseasesRequest {
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiseasesRequestCopyWith<DiseasesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiseasesRequestCopyWith<$Res> {
  factory $DiseasesRequestCopyWith(
          DiseasesRequest value, $Res Function(DiseasesRequest) then) =
      _$DiseasesRequestCopyWithImpl<$Res, DiseasesRequest>;
  @useResult
  $Res call({@JsonKey(name: 'per_page') int? perPage, int? page});
}

/// @nodoc
class _$DiseasesRequestCopyWithImpl<$Res, $Val extends DiseasesRequest>
    implements $DiseasesRequestCopyWith<$Res> {
  _$DiseasesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? perPage = freezed,
    Object? page = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiseasesRequestImplCopyWith<$Res>
    implements $DiseasesRequestCopyWith<$Res> {
  factory _$$DiseasesRequestImplCopyWith(_$DiseasesRequestImpl value,
          $Res Function(_$DiseasesRequestImpl) then) =
      __$$DiseasesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'per_page') int? perPage, int? page});
}

/// @nodoc
class __$$DiseasesRequestImplCopyWithImpl<$Res>
    extends _$DiseasesRequestCopyWithImpl<$Res, _$DiseasesRequestImpl>
    implements _$$DiseasesRequestImplCopyWith<$Res> {
  __$$DiseasesRequestImplCopyWithImpl(
      _$DiseasesRequestImpl _value, $Res Function(_$DiseasesRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? perPage = freezed,
    Object? page = freezed,
  }) {
    return _then(_$DiseasesRequestImpl(
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$DiseasesRequestImpl implements _DiseasesRequest {
  const _$DiseasesRequestImpl(
      {@JsonKey(name: 'per_page') this.perPage, this.page});

  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  final int? page;

  @override
  String toString() {
    return 'DiseasesRequest(perPage: $perPage, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiseasesRequestImpl &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, perPage, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiseasesRequestImplCopyWith<_$DiseasesRequestImpl> get copyWith =>
      __$$DiseasesRequestImplCopyWithImpl<_$DiseasesRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiseasesRequestImplToJson(
      this,
    );
  }
}

abstract class _DiseasesRequest implements DiseasesRequest {
  const factory _DiseasesRequest(
      {@JsonKey(name: 'per_page') final int? perPage,
      final int? page}) = _$DiseasesRequestImpl;

  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  int? get page;
  @override
  @JsonKey(ignore: true)
  _$$DiseasesRequestImplCopyWith<_$DiseasesRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
