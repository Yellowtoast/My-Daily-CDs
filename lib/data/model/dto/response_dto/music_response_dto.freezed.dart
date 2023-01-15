// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'music_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MusicListResponseDTO _$MusicListResponseDTOFromJson(Map<String, dynamic> json) {
  return _MusicListResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$MusicListResponseDTO {
  @JsonKey(name: 'albums', readValue: _readAlbumValue)
  List<MusicResponseDTO> get list => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  PaginaitonMetaResponse get paginationMeta =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MusicListResponseDTOCopyWith<MusicListResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicListResponseDTOCopyWith<$Res> {
  factory $MusicListResponseDTOCopyWith(MusicListResponseDTO value,
          $Res Function(MusicListResponseDTO) then) =
      _$MusicListResponseDTOCopyWithImpl<$Res, MusicListResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'albums', readValue: _readAlbumValue)
          List<MusicResponseDTO> list,
      @JsonKey(name: 'meta')
          PaginaitonMetaResponse paginationMeta});

  $PaginaitonMetaResponseCopyWith<$Res> get paginationMeta;
}

/// @nodoc
class _$MusicListResponseDTOCopyWithImpl<$Res,
        $Val extends MusicListResponseDTO>
    implements $MusicListResponseDTOCopyWith<$Res> {
  _$MusicListResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? paginationMeta = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MusicResponseDTO>,
      paginationMeta: null == paginationMeta
          ? _value.paginationMeta
          : paginationMeta // ignore: cast_nullable_to_non_nullable
              as PaginaitonMetaResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginaitonMetaResponseCopyWith<$Res> get paginationMeta {
    return $PaginaitonMetaResponseCopyWith<$Res>(_value.paginationMeta,
        (value) {
      return _then(_value.copyWith(paginationMeta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MusicListResponseDTOCopyWith<$Res>
    implements $MusicListResponseDTOCopyWith<$Res> {
  factory _$$_MusicListResponseDTOCopyWith(_$_MusicListResponseDTO value,
          $Res Function(_$_MusicListResponseDTO) then) =
      __$$_MusicListResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'albums', readValue: _readAlbumValue)
          List<MusicResponseDTO> list,
      @JsonKey(name: 'meta')
          PaginaitonMetaResponse paginationMeta});

  @override
  $PaginaitonMetaResponseCopyWith<$Res> get paginationMeta;
}

/// @nodoc
class __$$_MusicListResponseDTOCopyWithImpl<$Res>
    extends _$MusicListResponseDTOCopyWithImpl<$Res, _$_MusicListResponseDTO>
    implements _$$_MusicListResponseDTOCopyWith<$Res> {
  __$$_MusicListResponseDTOCopyWithImpl(_$_MusicListResponseDTO _value,
      $Res Function(_$_MusicListResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? paginationMeta = null,
  }) {
    return _then(_$_MusicListResponseDTO(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MusicResponseDTO>,
      paginationMeta: null == paginationMeta
          ? _value.paginationMeta
          : paginationMeta // ignore: cast_nullable_to_non_nullable
              as PaginaitonMetaResponse,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_MusicListResponseDTO implements _MusicListResponseDTO {
  _$_MusicListResponseDTO(
      {@JsonKey(name: 'albums', readValue: _readAlbumValue)
          final List<MusicResponseDTO> list = const <MusicResponseDTO>[],
      @JsonKey(name: 'meta')
          required this.paginationMeta})
      : _list = list;

  factory _$_MusicListResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MusicListResponseDTOFromJson(json);

  final List<MusicResponseDTO> _list;
  @override
  @JsonKey(name: 'albums', readValue: _readAlbumValue)
  List<MusicResponseDTO> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey(name: 'meta')
  final PaginaitonMetaResponse paginationMeta;

  @override
  String toString() {
    return 'MusicListResponseDTO(list: $list, paginationMeta: $paginationMeta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MusicListResponseDTO &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.paginationMeta, paginationMeta) ||
                other.paginationMeta == paginationMeta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), paginationMeta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MusicListResponseDTOCopyWith<_$_MusicListResponseDTO> get copyWith =>
      __$$_MusicListResponseDTOCopyWithImpl<_$_MusicListResponseDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MusicListResponseDTOToJson(
      this,
    );
  }
}

abstract class _MusicListResponseDTO implements MusicListResponseDTO {
  factory _MusicListResponseDTO(
          {@JsonKey(name: 'albums', readValue: _readAlbumValue)
              final List<MusicResponseDTO> list,
          @JsonKey(name: 'meta')
              required final PaginaitonMetaResponse paginationMeta}) =
      _$_MusicListResponseDTO;

  factory _MusicListResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_MusicListResponseDTO.fromJson;

  @override
  @JsonKey(name: 'albums', readValue: _readAlbumValue)
  List<MusicResponseDTO> get list;
  @override
  @JsonKey(name: 'meta')
  PaginaitonMetaResponse get paginationMeta;
  @override
  @JsonKey(ignore: true)
  _$$_MusicListResponseDTOCopyWith<_$_MusicListResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

MusicResponseDTO _$MusicResponseDTOFromJson(Map<String, dynamic> json) {
  return _MusicResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$MusicResponseDTO {
  @JsonKey(name: 'name')
  String get songName => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get songUrl => throw _privateConstructorUsedError;
  @MusicImageConverter()
  @JsonKey(name: 'image')
  List<MusicImageResponseDTO> get songImageList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'artist')
  ArtistResponseDTO? get artist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MusicResponseDTOCopyWith<MusicResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicResponseDTOCopyWith<$Res> {
  factory $MusicResponseDTOCopyWith(
          MusicResponseDTO value, $Res Function(MusicResponseDTO) then) =
      _$MusicResponseDTOCopyWithImpl<$Res, MusicResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name')
          String songName,
      @JsonKey(name: 'url')
          String songUrl,
      @MusicImageConverter()
      @JsonKey(name: 'image')
          List<MusicImageResponseDTO> songImageList,
      @JsonKey(name: 'artist')
          ArtistResponseDTO? artist});

  $ArtistResponseDTOCopyWith<$Res>? get artist;
}

/// @nodoc
class _$MusicResponseDTOCopyWithImpl<$Res, $Val extends MusicResponseDTO>
    implements $MusicResponseDTOCopyWith<$Res> {
  _$MusicResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songName = null,
    Object? songUrl = null,
    Object? songImageList = null,
    Object? artist = freezed,
  }) {
    return _then(_value.copyWith(
      songName: null == songName
          ? _value.songName
          : songName // ignore: cast_nullable_to_non_nullable
              as String,
      songUrl: null == songUrl
          ? _value.songUrl
          : songUrl // ignore: cast_nullable_to_non_nullable
              as String,
      songImageList: null == songImageList
          ? _value.songImageList
          : songImageList // ignore: cast_nullable_to_non_nullable
              as List<MusicImageResponseDTO>,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistResponseDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtistResponseDTOCopyWith<$Res>? get artist {
    if (_value.artist == null) {
      return null;
    }

    return $ArtistResponseDTOCopyWith<$Res>(_value.artist!, (value) {
      return _then(_value.copyWith(artist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MusicResponseDTOCopyWith<$Res>
    implements $MusicResponseDTOCopyWith<$Res> {
  factory _$$_MusicResponseDTOCopyWith(
          _$_MusicResponseDTO value, $Res Function(_$_MusicResponseDTO) then) =
      __$$_MusicResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name')
          String songName,
      @JsonKey(name: 'url')
          String songUrl,
      @MusicImageConverter()
      @JsonKey(name: 'image')
          List<MusicImageResponseDTO> songImageList,
      @JsonKey(name: 'artist')
          ArtistResponseDTO? artist});

  @override
  $ArtistResponseDTOCopyWith<$Res>? get artist;
}

/// @nodoc
class __$$_MusicResponseDTOCopyWithImpl<$Res>
    extends _$MusicResponseDTOCopyWithImpl<$Res, _$_MusicResponseDTO>
    implements _$$_MusicResponseDTOCopyWith<$Res> {
  __$$_MusicResponseDTOCopyWithImpl(
      _$_MusicResponseDTO _value, $Res Function(_$_MusicResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songName = null,
    Object? songUrl = null,
    Object? songImageList = null,
    Object? artist = freezed,
  }) {
    return _then(_$_MusicResponseDTO(
      songName: null == songName
          ? _value.songName
          : songName // ignore: cast_nullable_to_non_nullable
              as String,
      songUrl: null == songUrl
          ? _value.songUrl
          : songUrl // ignore: cast_nullable_to_non_nullable
              as String,
      songImageList: null == songImageList
          ? _value._songImageList
          : songImageList // ignore: cast_nullable_to_non_nullable
              as List<MusicImageResponseDTO>,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistResponseDTO?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_MusicResponseDTO implements _MusicResponseDTO {
  _$_MusicResponseDTO(
      {@JsonKey(name: 'name')
          this.songName = '',
      @JsonKey(name: 'url')
          this.songUrl = '',
      @MusicImageConverter()
      @JsonKey(name: 'image')
          final List<MusicImageResponseDTO> songImageList = const [],
      @JsonKey(name: 'artist')
          this.artist})
      : _songImageList = songImageList;

  factory _$_MusicResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MusicResponseDTOFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String songName;
  @override
  @JsonKey(name: 'url')
  final String songUrl;
  final List<MusicImageResponseDTO> _songImageList;
  @override
  @MusicImageConverter()
  @JsonKey(name: 'image')
  List<MusicImageResponseDTO> get songImageList {
    if (_songImageList is EqualUnmodifiableListView) return _songImageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songImageList);
  }

  @override
  @JsonKey(name: 'artist')
  final ArtistResponseDTO? artist;

  @override
  String toString() {
    return 'MusicResponseDTO(songName: $songName, songUrl: $songUrl, songImageList: $songImageList, artist: $artist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MusicResponseDTO &&
            (identical(other.songName, songName) ||
                other.songName == songName) &&
            (identical(other.songUrl, songUrl) || other.songUrl == songUrl) &&
            const DeepCollectionEquality()
                .equals(other._songImageList, _songImageList) &&
            (identical(other.artist, artist) || other.artist == artist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, songName, songUrl,
      const DeepCollectionEquality().hash(_songImageList), artist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MusicResponseDTOCopyWith<_$_MusicResponseDTO> get copyWith =>
      __$$_MusicResponseDTOCopyWithImpl<_$_MusicResponseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MusicResponseDTOToJson(
      this,
    );
  }
}

abstract class _MusicResponseDTO implements MusicResponseDTO {
  factory _MusicResponseDTO(
      {@JsonKey(name: 'name')
          final String songName,
      @JsonKey(name: 'url')
          final String songUrl,
      @MusicImageConverter()
      @JsonKey(name: 'image')
          final List<MusicImageResponseDTO> songImageList,
      @JsonKey(name: 'artist')
          final ArtistResponseDTO? artist}) = _$_MusicResponseDTO;

  factory _MusicResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_MusicResponseDTO.fromJson;

  @override
  @JsonKey(name: 'name')
  String get songName;
  @override
  @JsonKey(name: 'url')
  String get songUrl;
  @override
  @MusicImageConverter()
  @JsonKey(name: 'image')
  List<MusicImageResponseDTO> get songImageList;
  @override
  @JsonKey(name: 'artist')
  ArtistResponseDTO? get artist;
  @override
  @JsonKey(ignore: true)
  _$$_MusicResponseDTOCopyWith<_$_MusicResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
