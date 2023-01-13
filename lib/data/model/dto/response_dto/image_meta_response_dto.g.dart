// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_meta_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageMetaResponseDTO _$$_ImageMetaResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ImageMetaResponseDTO(
      isLastPage: json['is_end'] as bool? ?? true,
      totalPage: json['pageable_count'] as int? ?? 0,
      totalDocuments: json['total_count'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ImageMetaResponseDTOToJson(
        _$_ImageMetaResponseDTO instance) =>
    <String, dynamic>{
      'is_end': instance.isLastPage,
      'pageable_count': instance.totalPage,
      'total_count': instance.totalDocuments,
    };
