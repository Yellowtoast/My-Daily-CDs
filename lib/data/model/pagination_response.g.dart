// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginationResponse<T> _$PaginationResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PaginationResponse<T>(
      list: (json['list'] as List<dynamic>).map(fromJsonT).toList(),
      meta:
          PaginaitonMetaResponse.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaginationResponseToJson<T>(
  PaginationResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'meta': instance.meta,
      'list': instance.list.map(toJsonT).toList(),
    };

_$_PaginationMetaResponse _$$_PaginationMetaResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PaginationMetaResponse(
      hasMore: _readHasMoreValue(json, 'hasMore') as bool? ?? false,
      currentPage: _readPageValue(json, 'page') as int? ?? 0,
    );

Map<String, dynamic> _$$_PaginationMetaResponseToJson(
        _$_PaginationMetaResponse instance) =>
    <String, dynamic>{
      'hasMore': instance.hasMore,
      'page': instance.currentPage,
    };
