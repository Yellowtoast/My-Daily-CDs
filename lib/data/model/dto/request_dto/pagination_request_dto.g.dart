// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginationRequest _$$_PaginationRequestFromJson(Map<String, dynamic> json) =>
    _$_PaginationRequest(
      page: json['page'] as int? ?? 1,
      limit: json['limit'] as int? ?? 20,
    );

Map<String, dynamic> _$$_PaginationRequestToJson(
        _$_PaginationRequest instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
    };
