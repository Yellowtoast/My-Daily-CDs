// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageResponseDTO _$$_ImageResponseDTOFromJson(Map<String, dynamic> json) =>
    _$_ImageResponseDTO(
      collection:
          $enumDecodeNullable(_$CollectionEnumMap, json['collection']) ??
              Collection.etc,
      siteName: json['display_sitename'] as String? ?? '',
      documentUrl: json['doc_url'] as String? ?? '',
      imageUrl: json['image_url'] as String? ?? '',
      dateTime: _$JsonConverterFromJson<String, DateTime>(
          json['datetime'], const DateTimeConverter().fromJson),
    );

Map<String, dynamic> _$$_ImageResponseDTOToJson(_$_ImageResponseDTO instance) =>
    <String, dynamic>{
      'collection': _$CollectionEnumMap[instance.collection]!,
      'display_sitename': instance.siteName,
      'doc_url': instance.documentUrl,
      'image_url': instance.imageUrl,
      'datetime': _$JsonConverterToJson<String, DateTime>(
          instance.dateTime, const DateTimeConverter().toJson),
    };

const _$CollectionEnumMap = {
  Collection.news: 'news',
  Collection.blog: 'blog',
  Collection.etc: 'etc',
  Collection.cafe: 'cafe',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
