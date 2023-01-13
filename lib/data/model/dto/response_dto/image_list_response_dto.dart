// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'abstract_response_dto.dart';
import 'image_meta_response_dto.dart';
import 'image_response_dto.dart';
part 'image_list_response_dto.freezed.dart';
part 'image_list_response_dto.g.dart';

@freezed
class ImageListResponseDTO with _$ImageListResponseDTO implements ResponseDTO {
  @JsonSerializable(explicitToJson: true)
  factory ImageListResponseDTO({
    @JsonKey(name: 'documents')
    @Default(<ImageResponseDTO>[])
        List<ImageResponseDTO> list,
    required ImageMetaResponseDTO meta,
  }) = _ImageListResponseDTO;

  factory ImageListResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ImageListResponseDTOFromJson(json);
}
