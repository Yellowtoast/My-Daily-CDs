// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dto/response_dto/abstract_response_dto.dart';

part 'pagination_meta_response.freezed.dart';
part 'pagination_meta_response.g.dart';

@freezed
class PaginaitonMetaResponse
    with _$PaginaitonMetaResponse
    implements ResponseDTO {
  @JsonSerializable(explicitToJson: true)
  factory PaginaitonMetaResponse({
    @JsonKey(name: 'hasMore', readValue: _readHasMoreValue)
    @Default(false)
        bool hasMore,
    @JsonKey(name: 'page') @Default(0) int currentPage,
  }) = _PaginationMetaResponse;

  factory PaginaitonMetaResponse.fromJson(Map<String, dynamic> json) =>
      _$PaginaitonMetaResponseFronJson(json);
}

Object? _readHasMoreValue(Map json, String key) {
  final int totalPage = json["totalPages"] as int? ?? 0;
  final int currentPage = json["page"] as int? ?? 0;
  late final bool hasMore;

  if (totalPage == 0 || currentPage == totalPage) {
    hasMore = false;
  } else {
    hasMore = true;
  }
  return json['hasMore'] = hasMore;
}
