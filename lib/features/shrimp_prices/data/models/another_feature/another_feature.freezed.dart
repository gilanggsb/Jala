// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'another_feature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnotherFeature _$AnotherFeatureFromJson(Map<String, dynamic> json) {
  return _AnotherFeature.fromJson(json);
}

/// @nodoc
mixin _$AnotherFeature {
  int get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnotherFeatureCopyWith<AnotherFeature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnotherFeatureCopyWith<$Res> {
  factory $AnotherFeatureCopyWith(
          AnotherFeature value, $Res Function(AnotherFeature) then) =
      _$AnotherFeatureCopyWithImpl<$Res, AnotherFeature>;
  @useResult
  $Res call({int id, String imageUrl, String name});
}

/// @nodoc
class _$AnotherFeatureCopyWithImpl<$Res, $Val extends AnotherFeature>
    implements $AnotherFeatureCopyWith<$Res> {
  _$AnotherFeatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnotherFeatureImplCopyWith<$Res>
    implements $AnotherFeatureCopyWith<$Res> {
  factory _$$AnotherFeatureImplCopyWith(_$AnotherFeatureImpl value,
          $Res Function(_$AnotherFeatureImpl) then) =
      __$$AnotherFeatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String imageUrl, String name});
}

/// @nodoc
class __$$AnotherFeatureImplCopyWithImpl<$Res>
    extends _$AnotherFeatureCopyWithImpl<$Res, _$AnotherFeatureImpl>
    implements _$$AnotherFeatureImplCopyWith<$Res> {
  __$$AnotherFeatureImplCopyWithImpl(
      _$AnotherFeatureImpl _value, $Res Function(_$AnotherFeatureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? name = null,
  }) {
    return _then(_$AnotherFeatureImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnotherFeatureImpl implements _AnotherFeature {
  const _$AnotherFeatureImpl(
      {required this.id, required this.imageUrl, required this.name});

  factory _$AnotherFeatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnotherFeatureImplFromJson(json);

  @override
  final int id;
  @override
  final String imageUrl;
  @override
  final String name;

  @override
  String toString() {
    return 'AnotherFeature(id: $id, imageUrl: $imageUrl, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnotherFeatureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnotherFeatureImplCopyWith<_$AnotherFeatureImpl> get copyWith =>
      __$$AnotherFeatureImplCopyWithImpl<_$AnotherFeatureImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnotherFeatureImplToJson(
      this,
    );
  }
}

abstract class _AnotherFeature implements AnotherFeature {
  const factory _AnotherFeature(
      {required final int id,
      required final String imageUrl,
      required final String name}) = _$AnotherFeatureImpl;

  factory _AnotherFeature.fromJson(Map<String, dynamic> json) =
      _$AnotherFeatureImpl.fromJson;

  @override
  int get id;
  @override
  String get imageUrl;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$AnotherFeatureImplCopyWith<_$AnotherFeatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
