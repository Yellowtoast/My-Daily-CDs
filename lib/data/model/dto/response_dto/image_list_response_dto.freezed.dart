// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageListResponseDTO _$ImageListResponseDTOFromJson(Map<String, dynamic> json) {
  return _ImageListResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$ImageListResponseDTO {
  @JsonKey(name: 'documents')
  List<ImageResponseDTO> get list => throw _privateConstructorUsedError;
  ImageMetaResponseDTO get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageListResponseDTOCopyWith<ImageListResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageListResponseDTOCopyWith<$Res> {
  factory $ImageListResponseDTOCopyWith(ImageListResponseDTO value,
          $Res Function(ImageListResponseDTO) then) =
      _$ImageListResponseDTOCopyWithImpl<$Res, ImageListResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'documents') List<ImageResponseDTO> list,
      ImageMetaResponseDTO meta});

  $ImageMetaResponseDTOCopyWith<$Res> get meta;
}

/// @nodoc
class _$ImageListResponseDTOCopyWithImpl<$Res,
        $Val extends ImageListResponseDTO>
    implements $ImageListResponseDTOCopyWith<$Res> {
  _$ImageListResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ImageResponseDTO>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ImageMetaResponseDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageMetaResponseDTOCopyWith<$Res> get meta {
    return $ImageMetaResponseDTOCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ImageListResponseDTOCopyWith<$Res>
    implements $ImageListResponseDTOCopyWith<$Res> {
  factory _$$_ImageListResponseDTOCopyWith(_$_ImageListResponseDTO value,
          $Res Function(_$_ImageListResponseDTO) then) =
      __$$_ImageListResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'documents') List<ImageResponseDTO> list,
      ImageMetaResponseDTO meta});

  @override
  $ImageMetaResponseDTOCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_ImageListResponseDTOCopyWithImpl<$Res>
    extends _$ImageListResponseDTOCopyWithImpl<$Res, _$_ImageListResponseDTO>
    implements _$$_ImageListResponseDTOCopyWith<$Res> {
  __$$_ImageListResponseDTOCopyWithImpl(_$_ImageListResponseDTO _value,
      $Res Function(_$_ImageListResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? meta = null,
  }) {
    return _then(_$_ImageListResponseDTO(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ImageResponseDTO>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ImageMetaResponseDTO,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ImageListResponseDTO implements _ImageListResponseDTO {
  _$_ImageListResponseDTO(
      {@JsonKey(name: 'documents')
          final List<ImageResponseDTO> list = const <ImageResponseDTO>[],
      required this.meta})
      : _list = list;

  factory _$_ImageListResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ImageListResponseDTOFromJson(json);

  final List<ImageResponseDTO> _list;
  @override
  @JsonKey(name: 'documents')
  List<ImageResponseDTO> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final ImageMetaResponseDTO meta;

  @override
  String toString() {
    return 'ImageListResponseDTO(list: $list, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageListResponseDTO &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageListResponseDTOCopyWith<_$_ImageListResponseDTO> get copyWith =>
      __$$_ImageListResponseDTOCopyWithImpl<_$_ImageListResponseDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageListResponseDTOToJson(
      this,
    );
  }
}

abstract class _ImageListResponseDTO implements ImageListResponseDTO {
  factory _ImageListResponseDTO(
      {@JsonKey(name: 'documents') final List<ImageResponseDTO> list,
      required final ImageMetaResponseDTO meta}) = _$_ImageListResponseDTO;

  factory _ImageListResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_ImageListResponseDTO.fromJson;

  @override
  @JsonKey(name: 'documents')
  List<ImageResponseDTO> get list;
  @override
  ImageMetaResponseDTO get meta;
  @override
  @JsonKey(ignore: true)
  _$$_ImageListResponseDTOCopyWith<_$_ImageListResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
