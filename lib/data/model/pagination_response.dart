// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/error_handling/error_message_object.dart';
import 'dto/response_dto/abstract_response_dto.dart';
part 'pagination_response.g.dart';
part 'pagination_response.freezed.dart';

abstract class PaginationBase {}

class PaginationError extends PaginationBase {
  final ErrorObject errorObject;
  PaginationError({required this.errorObject});
}

class PaginationLoading extends PaginationBase {}

class PaginationFetchingMore extends PaginationResponse {
  PaginationFetchingMore({required super.list, required super.meta});
}

class PaginationRefetching extends PaginationResponse {
  PaginationRefetching({required super.list, required super.meta});
}

@JsonSerializable(genericArgumentFactories: true)
class PaginationResponse<T> extends PaginationBase implements ResponseDTO {
  final PaginaitonMetaResponse meta;
  final List<T> list;

  PaginationResponse(
      {@JsonKey(name: 'data', readValue: _readListData) required this.list,
      @JsonKey(name: 'meta', readValue: _readMetaData) required this.meta});

  factory PaginationResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$PaginationResponseFromJson(json, fromJsonT);

  PaginationResponse copyWith({PaginaitonMetaResponse? meta, List<T>? list}) {
    return PaginationResponse(list: list ?? this.list, meta: meta ?? this.meta);
  }
}

Object? _readListData(Map json, String key) {
  json['data'] = json['albums']['album'];
  return json['data'];
}

Object? _readMetaData(Map json, String key) {
  json['meta'] = json['albums']['@attr'];
  return json['meta'];
}

@freezed
class PaginaitonMetaResponse
    with _$PaginaitonMetaResponse
    implements ResponseDTO {
  @JsonSerializable(explicitToJson: true)
  factory PaginaitonMetaResponse({
    @JsonKey(name: 'hasMore', readValue: _readHasMoreValue)
    @Default(false)
        bool hasMore,
    @JsonKey(name: 'page', readValue: _readPageValue)
    @Default(0)
        int currentPage,
  }) = _PaginationMetaResponse;

  factory PaginaitonMetaResponse.fromJson(Map<String, dynamic> json) =>
      _$PaginaitonMetaResponseFromJson(json);
}

Object? _readHasMoreValue(Map json, String key) {
  final int totalPage = int.tryParse(json["totalPages"]) ?? 0;
  final int currentPage = int.tryParse(json["page"]) ?? 0;
  late final bool hasMore;

  if (totalPage == 0 || currentPage == totalPage) {
    hasMore = false;
  } else {
    hasMore = true;
  }

  return json['hasMore'] = hasMore;
}

Object? _readPageValue(Map json, String key) {
  json["page"] = int.tryParse(json["page"]) ?? 0;
  json["totalPage"] = int.tryParse(json["totalPages"]) ?? 0;

  return json['page'];
}
