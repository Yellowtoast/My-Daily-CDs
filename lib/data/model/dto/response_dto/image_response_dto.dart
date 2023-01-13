// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../enums/enums.dart';
import 'abstract_response_dto.dart';
part 'image_response_dto.freezed.dart';
part 'image_response_dto.g.dart';

@freezed
class ImageResponseDTO with _$ImageResponseDTO implements ResponseDTO {
  @JsonSerializable(explicitToJson: true)
  factory ImageResponseDTO({
    @Default(Collection.etc) Collection collection,
    @JsonKey(name: 'display_sitename') @Default('') String siteName,
    @JsonKey(name: 'doc_url') @Default('') String documentUrl,
    @JsonKey(name: 'image_url') @Default('') String imageUrl,
    @DateTimeConverter() @JsonKey(name: 'datetime') DateTime? dateTime,
  }) = _ImageResponseDTO;

  factory ImageResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ImageResponseDTOFromJson(json);
}

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String dateTimeString) {
    return DateTime.parse(dateTimeString);
  }

  @override
  String toJson(DateTime date) => date.toIso8601String();
}
