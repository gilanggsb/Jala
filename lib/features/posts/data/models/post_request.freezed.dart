// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostRequest {
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'with')
  String? get postRequestWith => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostRequestCopyWith<PostRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostRequestCopyWith<$Res> {
  factory $PostRequestCopyWith(
          PostRequest value, $Res Function(PostRequest) then) =
      _$PostRequestCopyWithImpl<$Res, PostRequest>;
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'with') String? postRequestWith});
}

/// @nodoc
class _$PostRequestCopyWithImpl<$Res, $Val extends PostRequest>
    implements $PostRequestCopyWith<$Res> {
  _$PostRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? postRequestWith = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      postRequestWith: freezed == postRequestWith
          ? _value.postRequestWith
          : postRequestWith // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostRequestImplCopyWith<$Res>
    implements $PostRequestCopyWith<$Res> {
  factory _$$PostRequestImplCopyWith(
          _$PostRequestImpl value, $Res Function(_$PostRequestImpl) then) =
      __$$PostRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'with') String? postRequestWith});
}

/// @nodoc
class __$$PostRequestImplCopyWithImpl<$Res>
    extends _$PostRequestCopyWithImpl<$Res, _$PostRequestImpl>
    implements _$$PostRequestImplCopyWith<$Res> {
  __$$PostRequestImplCopyWithImpl(
      _$PostRequestImpl _value, $Res Function(_$PostRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? postRequestWith = freezed,
  }) {
    return _then(_$PostRequestImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      postRequestWith: freezed == postRequestWith
          ? _value.postRequestWith
          : postRequestWith // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$PostRequestImpl implements _PostRequest {
  const _$PostRequestImpl(
      {this.page,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'with') this.postRequestWith});

  @override
  final int? page;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  @JsonKey(name: 'with')
  final String? postRequestWith;

  @override
  String toString() {
    return 'PostRequest(page: $page, perPage: $perPage, postRequestWith: $postRequestWith)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostRequestImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.postRequestWith, postRequestWith) ||
                other.postRequestWith == postRequestWith));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, postRequestWith);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostRequestImplCopyWith<_$PostRequestImpl> get copyWith =>
      __$$PostRequestImplCopyWithImpl<_$PostRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostRequestImplToJson(
      this,
    );
  }
}

abstract class _PostRequest implements PostRequest {
  const factory _PostRequest(
          {final int? page,
          @JsonKey(name: 'per_page') final int? perPage,
          @JsonKey(name: 'with') final String? postRequestWith}) =
      _$PostRequestImpl;

  @override
  int? get page;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  @JsonKey(name: 'with')
  String? get postRequestWith;
  @override
  @JsonKey(ignore: true)
  _$$PostRequestImplCopyWith<_$PostRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
