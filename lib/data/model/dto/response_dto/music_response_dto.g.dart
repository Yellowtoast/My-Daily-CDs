// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MusicListResponseDTO _$$_MusicListResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_MusicListResponseDTO(
      list: (_readAlbumValue(json, 'albums') as List<dynamic>?)
              ?.map((e) => MusicResponseDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MusicResponseDTO>[],
      paginationMeta:
          PaginaitonMetaResponse.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MusicListResponseDTOToJson(
        _$_MusicListResponseDTO instance) =>
    <String, dynamic>{
      'albums': instance.list.map((e) => e.toJson()).toList(),
      'meta': instance.paginationMeta.toJson(),
    };

_$_MusicResponseDTO _$$_MusicResponseDTOFromJson(Map<String, dynamic> json) =>
    _$_MusicResponseDTO(
      songName: json['name'] as String? ?? '',
      songUrl: json['url'] as String? ?? '',
      songImageList: json['image'] == null
          ? const []
          : const MusicImageConverter().fromJson(json['image']),
      artist: json['artist'] == null
          ? null
          : ArtistResponseDTO.fromJson(json['artist'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MusicResponseDTOToJson(_$_MusicResponseDTO instance) =>
    <String, dynamic>{
      'name': instance.songName,
      'url': instance.songUrl,
      'image': const MusicImageConverter().toJson(instance.songImageList),
      'artist': instance.artist?.toJson(),
    };
