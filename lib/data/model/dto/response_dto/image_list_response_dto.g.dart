// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageListResponseDTO _$$_ImageListResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ImageListResponseDTO(
      list: (json['documents'] as List<dynamic>?)
              ?.map((e) => ImageResponseDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ImageResponseDTO>[],
      meta: ImageMetaResponseDTO.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ImageListResponseDTOToJson(
        _$_ImageListResponseDTO instance) =>
    <String, dynamic>{
      'documents': instance.list.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
    };
