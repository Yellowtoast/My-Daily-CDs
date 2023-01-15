// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArtistResponseDTO _$ArtistResponseDTOFromJson(Map<String, dynamic> json) {
  return _ArtistResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$ArtistResponseDTO {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistResponseDTOCopyWith<ArtistResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistResponseDTOCopyWith<$Res> {
  factory $ArtistResponseDTOCopyWith(
          ArtistResponseDTO value, $Res Function(ArtistResponseDTO) then) =
      _$ArtistResponseDTOCopyWithImpl<$Res, ArtistResponseDTO>;
  @useResult
  $Res call({@JsonKey(name: 'name') String name, String url});
}

/// @nodoc
class _$ArtistResponseDTOCopyWithImpl<$Res, $Val extends ArtistResponseDTO>
    implements $ArtistResponseDTOCopyWith<$Res> {
  _$ArtistResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArtistResponseDTOCopyWith<$Res>
    implements $ArtistResponseDTOCopyWith<$Res> {
  factory _$$_ArtistResponseDTOCopyWith(_$_ArtistResponseDTO value,
          $Res Function(_$_ArtistResponseDTO) then) =
      __$$_ArtistResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String name, String url});
}

/// @nodoc
class __$$_ArtistResponseDTOCopyWithImpl<$Res>
    extends _$ArtistResponseDTOCopyWithImpl<$Res, _$_ArtistResponseDTO>
    implements _$$_ArtistResponseDTOCopyWith<$Res> {
  __$$_ArtistResponseDTOCopyWithImpl(
      _$_ArtistResponseDTO _value, $Res Function(_$_ArtistResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_ArtistResponseDTO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ArtistResponseDTO implements _ArtistResponseDTO {
  _$_ArtistResponseDTO({@JsonKey(name: 'name') this.name = '', this.url = ''});

  factory _$_ArtistResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistResponseDTOFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey()
  final String url;

  @override
  String toString() {
    return 'ArtistResponseDTO(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArtistResponseDTO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArtistResponseDTOCopyWith<_$_ArtistResponseDTO> get copyWith =>
      __$$_ArtistResponseDTOCopyWithImpl<_$_ArtistResponseDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistResponseDTOToJson(
      this,
    );
  }
}

abstract class _ArtistResponseDTO implements ArtistResponseDTO {
  factory _ArtistResponseDTO(
      {@JsonKey(name: 'name') final String name,
      final String url}) = _$_ArtistResponseDTO;

  factory _ArtistResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_ArtistResponseDTO.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_ArtistResponseDTOCopyWith<_$_ArtistResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
