import 'package:freezed_annotation/freezed_annotation.dart';
part 'pagination_request_dto.g.dart';
part 'pagination_request_dto.freezed.dart';

@freezed
class PaginationRequest with _$PaginationRequest {
  factory PaginationRequest({
    @Default(1) int page,
    @Default(20) int limit,
  }) = _PaginationRequest;

  factory PaginationRequest.fromJson(Map<String, dynamic> json) =>
      _$PaginationRequestFromJson(json);
}
