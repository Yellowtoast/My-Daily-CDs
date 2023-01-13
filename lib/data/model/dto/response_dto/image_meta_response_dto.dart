// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'abstract_response_dto.dart';
part 'image_meta_response_dto.freezed.dart';
part 'image_meta_response_dto.g.dart';

@freezed
class ImageMetaResponseDTO with _$ImageMetaResponseDTO implements ResponseDTO {
  @JsonSerializable(explicitToJson: true)
  factory ImageMetaResponseDTO({
    @JsonKey(name: 'is_end') @Default(true) bool isLastPage,
    @JsonKey(name: 'pageable_count') @Default(0) int totalPage,
    @JsonKey(name: 'total_count') @Default(0) int totalDocuments,
  }) = _ImageMetaResponseDTO;

  factory ImageMetaResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ImageMetaResponseDTOFromJson(json);
}
