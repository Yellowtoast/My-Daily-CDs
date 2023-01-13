// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageResponseDTO _$ImageResponseDTOFromJson(Map<String, dynamic> json) {
  return _ImageResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$ImageResponseDTO {
  Collection get collection => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_sitename')
  String get siteName => throw _privateConstructorUsedError;
  @JsonKey(name: 'doc_url')
  String get documentUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'datetime')
  DateTime? get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageResponseDTOCopyWith<ImageResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageResponseDTOCopyWith<$Res> {
  factory $ImageResponseDTOCopyWith(
          ImageResponseDTO value, $Res Function(ImageResponseDTO) then) =
      _$ImageResponseDTOCopyWithImpl<$Res, ImageResponseDTO>;
  @useResult
  $Res call(
      {Collection collection,
      @JsonKey(name: 'display_sitename') String siteName,
      @JsonKey(name: 'doc_url') String documentUrl,
      @JsonKey(name: 'image_url') String imageUrl,
      @DateTimeConverter() @JsonKey(name: 'datetime') DateTime? dateTime});
}

/// @nodoc
class _$ImageResponseDTOCopyWithImpl<$Res, $Val extends ImageResponseDTO>
    implements $ImageResponseDTOCopyWith<$Res> {
  _$ImageResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collection = null,
    Object? siteName = null,
    Object? documentUrl = null,
    Object? imageUrl = null,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as Collection,
      siteName: null == siteName
          ? _value.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String,
      documentUrl: null == documentUrl
          ? _value.documentUrl
          : documentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageResponseDTOCopyWith<$Res>
    implements $ImageResponseDTOCopyWith<$Res> {
  factory _$$_ImageResponseDTOCopyWith(
          _$_ImageResponseDTO value, $Res Function(_$_ImageResponseDTO) then) =
      __$$_ImageResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Collection collection,
      @JsonKey(name: 'display_sitename') String siteName,
      @JsonKey(name: 'doc_url') String documentUrl,
      @JsonKey(name: 'image_url') String imageUrl,
      @DateTimeConverter() @JsonKey(name: 'datetime') DateTime? dateTime});
}

/// @nodoc
class __$$_ImageResponseDTOCopyWithImpl<$Res>
    extends _$ImageResponseDTOCopyWithImpl<$Res, _$_ImageResponseDTO>
    implements _$$_ImageResponseDTOCopyWith<$Res> {
  __$$_ImageResponseDTOCopyWithImpl(
      _$_ImageResponseDTO _value, $Res Function(_$_ImageResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collection = null,
    Object? siteName = null,
    Object? documentUrl = null,
    Object? imageUrl = null,
    Object? dateTime = freezed,
  }) {
    return _then(_$_ImageResponseDTO(
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as Collection,
      siteName: null == siteName
          ? _value.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String,
      documentUrl: null == documentUrl
          ? _value.documentUrl
          : documentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ImageResponseDTO implements _ImageResponseDTO {
  _$_ImageResponseDTO(
      {this.collection = Collection.etc,
      @JsonKey(name: 'display_sitename') this.siteName = '',
      @JsonKey(name: 'doc_url') this.documentUrl = '',
      @JsonKey(name: 'image_url') this.imageUrl = '',
      @DateTimeConverter() @JsonKey(name: 'datetime') this.dateTime});

  factory _$_ImageResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ImageResponseDTOFromJson(json);

  @override
  @JsonKey()
  final Collection collection;
  @override
  @JsonKey(name: 'display_sitename')
  final String siteName;
  @override
  @JsonKey(name: 'doc_url')
  final String documentUrl;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'datetime')
  final DateTime? dateTime;

  @override
  String toString() {
    return 'ImageResponseDTO(collection: $collection, siteName: $siteName, documentUrl: $documentUrl, imageUrl: $imageUrl, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageResponseDTO &&
            (identical(other.collection, collection) ||
                other.collection == collection) &&
            (identical(other.siteName, siteName) ||
                other.siteName == siteName) &&
            (identical(other.documentUrl, documentUrl) ||
                other.documentUrl == documentUrl) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, collection, siteName, documentUrl, imageUrl, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageResponseDTOCopyWith<_$_ImageResponseDTO> get copyWith =>
      __$$_ImageResponseDTOCopyWithImpl<_$_ImageResponseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageResponseDTOToJson(
      this,
    );
  }
}

abstract class _ImageResponseDTO implements ImageResponseDTO {
  factory _ImageResponseDTO(
      {final Collection collection,
      @JsonKey(name: 'display_sitename')
          final String siteName,
      @JsonKey(name: 'doc_url')
          final String documentUrl,
      @JsonKey(name: 'image_url')
          final String imageUrl,
      @DateTimeConverter()
      @JsonKey(name: 'datetime')
          final DateTime? dateTime}) = _$_ImageResponseDTO;

  factory _ImageResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_ImageResponseDTO.fromJson;

  @override
  Collection get collection;
  @override
  @JsonKey(name: 'display_sitename')
  String get siteName;
  @override
  @JsonKey(name: 'doc_url')
  String get documentUrl;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'datetime')
  DateTime? get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$_ImageResponseDTOCopyWith<_$_ImageResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
