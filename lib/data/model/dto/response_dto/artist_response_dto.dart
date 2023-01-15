// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'abstract_response_dto.dart';

part 'artist_response_dto.freezed.dart';
part 'artist_response_dto.g.dart';

@freezed
class ArtistResponseDTO with _$ArtistResponseDTO implements ResponseDTO {
  @JsonSerializable(explicitToJson: true)
  factory ArtistResponseDTO({
    @JsonKey(name: 'name') @Default('') String name,
    @Default('') String url,
  }) = _ArtistResponseDTO;

  factory ArtistResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ArtistResponseDTOFromJson(json);
}
