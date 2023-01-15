// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_meta_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginaitonMetaResponse _$PaginaitonMetaResponseFromJson(
    Map<String, dynamic> json) {
  return _PaginationMetaResponse.fromJson(json);
}

/// @nodoc
mixin _$PaginaitonMetaResponse {
// @JsonKey(name: 'hasMore', readValue: _readHasMoreValue)
// @Default(false)
//     bool hasMore,
  @JsonKey(name: 'page')
  int get currentPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginaitonMetaResponseCopyWith<PaginaitonMetaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginaitonMetaResponseCopyWith<$Res> {
  factory $PaginaitonMetaResponseCopyWith(PaginaitonMetaResponse value,
          $Res Function(PaginaitonMetaResponse) then) =
      _$PaginaitonMetaResponseCopyWithImpl<$Res, PaginaitonMetaResponse>;
  @useResult
  $Res call({@JsonKey(name: 'page') int currentPage});
}

/// @nodoc
class _$PaginaitonMetaResponseCopyWithImpl<$Res,
        $Val extends PaginaitonMetaResponse>
    implements $PaginaitonMetaResponseCopyWith<$Res> {
  _$PaginaitonMetaResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationMetaResponseCopyWith<$Res>
    implements $PaginaitonMetaResponseCopyWith<$Res> {
  factory _$$_PaginationMetaResponseCopyWith(_$_PaginationMetaResponse value,
          $Res Function(_$_PaginationMetaResponse) then) =
      __$$_PaginationMetaResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'page') int currentPage});
}

/// @nodoc
class __$$_PaginationMetaResponseCopyWithImpl<$Res>
    extends _$PaginaitonMetaResponseCopyWithImpl<$Res,
        _$_PaginationMetaResponse>
    implements _$$_PaginationMetaResponseCopyWith<$Res> {
  __$$_PaginationMetaResponseCopyWithImpl(_$_PaginationMetaResponse _value,
      $Res Function(_$_PaginationMetaResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
  }) {
    return _then(_$_PaginationMetaResponse(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PaginationMetaResponse implements _PaginationMetaResponse {
  _$_PaginationMetaResponse({@JsonKey(name: 'page') this.currentPage = 0});

  factory _$_PaginationMetaResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationMetaResponseFromJson(json);

// @JsonKey(name: 'hasMore', readValue: _readHasMoreValue)
// @Default(false)
//     bool hasMore,
  @override
  @JsonKey(name: 'page')
  final int currentPage;

  @override
  String toString() {
    return 'PaginaitonMetaResponse(currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationMetaResponse &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationMetaResponseCopyWith<_$_PaginationMetaResponse> get copyWith =>
      __$$_PaginationMetaResponseCopyWithImpl<_$_PaginationMetaResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationMetaResponseToJson(
      this,
    );
  }
}

abstract class _PaginationMetaResponse implements PaginaitonMetaResponse {
  factory _PaginationMetaResponse(
          {@JsonKey(name: 'page') final int currentPage}) =
      _$_PaginationMetaResponse;

  factory _PaginationMetaResponse.fromJson(Map<String, dynamic> json) =
      _$_PaginationMetaResponse.fromJson;

  @override // @JsonKey(name: 'hasMore', readValue: _readHasMoreValue)
// @Default(false)
//     bool hasMore,
  @JsonKey(name: 'page')
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationMetaResponseCopyWith<_$_PaginationMetaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
