// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_meta_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageMetaResponseDTO _$ImageMetaResponseDTOFromJson(Map<String, dynamic> json) {
  return _ImageMetaResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$ImageMetaResponseDTO {
  @JsonKey(name: 'is_end')
  bool get isLastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'pageable_count')
  int get totalPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_count')
  int get totalDocuments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageMetaResponseDTOCopyWith<ImageMetaResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageMetaResponseDTOCopyWith<$Res> {
  factory $ImageMetaResponseDTOCopyWith(ImageMetaResponseDTO value,
          $Res Function(ImageMetaResponseDTO) then) =
      _$ImageMetaResponseDTOCopyWithImpl<$Res, ImageMetaResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_end') bool isLastPage,
      @JsonKey(name: 'pageable_count') int totalPage,
      @JsonKey(name: 'total_count') int totalDocuments});
}

/// @nodoc
class _$ImageMetaResponseDTOCopyWithImpl<$Res,
        $Val extends ImageMetaResponseDTO>
    implements $ImageMetaResponseDTOCopyWith<$Res> {
  _$ImageMetaResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLastPage = null,
    Object? totalPage = null,
    Object? totalDocuments = null,
  }) {
    return _then(_value.copyWith(
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalDocuments: null == totalDocuments
          ? _value.totalDocuments
          : totalDocuments // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageMetaResponseDTOCopyWith<$Res>
    implements $ImageMetaResponseDTOCopyWith<$Res> {
  factory _$$_ImageMetaResponseDTOCopyWith(_$_ImageMetaResponseDTO value,
          $Res Function(_$_ImageMetaResponseDTO) then) =
      __$$_ImageMetaResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_end') bool isLastPage,
      @JsonKey(name: 'pageable_count') int totalPage,
      @JsonKey(name: 'total_count') int totalDocuments});
}

/// @nodoc
class __$$_ImageMetaResponseDTOCopyWithImpl<$Res>
    extends _$ImageMetaResponseDTOCopyWithImpl<$Res, _$_ImageMetaResponseDTO>
    implements _$$_ImageMetaResponseDTOCopyWith<$Res> {
  __$$_ImageMetaResponseDTOCopyWithImpl(_$_ImageMetaResponseDTO _value,
      $Res Function(_$_ImageMetaResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLastPage = null,
    Object? totalPage = null,
    Object? totalDocuments = null,
  }) {
    return _then(_$_ImageMetaResponseDTO(
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalDocuments: null == totalDocuments
          ? _value.totalDocuments
          : totalDocuments // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ImageMetaResponseDTO implements _ImageMetaResponseDTO {
  _$_ImageMetaResponseDTO(
      {@JsonKey(name: 'is_end') this.isLastPage = true,
      @JsonKey(name: 'pageable_count') this.totalPage = 0,
      @JsonKey(name: 'total_count') this.totalDocuments = 0});

  factory _$_ImageMetaResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ImageMetaResponseDTOFromJson(json);

  @override
  @JsonKey(name: 'is_end')
  final bool isLastPage;
  @override
  @JsonKey(name: 'pageable_count')
  final int totalPage;
  @override
  @JsonKey(name: 'total_count')
  final int totalDocuments;

  @override
  String toString() {
    return 'ImageMetaResponseDTO(isLastPage: $isLastPage, totalPage: $totalPage, totalDocuments: $totalDocuments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageMetaResponseDTO &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.totalDocuments, totalDocuments) ||
                other.totalDocuments == totalDocuments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isLastPage, totalPage, totalDocuments);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageMetaResponseDTOCopyWith<_$_ImageMetaResponseDTO> get copyWith =>
      __$$_ImageMetaResponseDTOCopyWithImpl<_$_ImageMetaResponseDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageMetaResponseDTOToJson(
      this,
    );
  }
}

abstract class _ImageMetaResponseDTO implements ImageMetaResponseDTO {
  factory _ImageMetaResponseDTO(
          {@JsonKey(name: 'is_end') final bool isLastPage,
          @JsonKey(name: 'pageable_count') final int totalPage,
          @JsonKey(name: 'total_count') final int totalDocuments}) =
      _$_ImageMetaResponseDTO;

  factory _ImageMetaResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_ImageMetaResponseDTO.fromJson;

  @override
  @JsonKey(name: 'is_end')
  bool get isLastPage;
  @override
  @JsonKey(name: 'pageable_count')
  int get totalPage;
  @override
  @JsonKey(name: 'total_count')
  int get totalDocuments;
  @override
  @JsonKey(ignore: true)
  _$$_ImageMetaResponseDTOCopyWith<_$_ImageMetaResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
