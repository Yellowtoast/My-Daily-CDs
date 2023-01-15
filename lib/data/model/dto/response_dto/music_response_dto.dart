// ignore_for_file: invalid_annotation_target

import 'package:daily_cd_player/data/model/dto/response_dto/artist_response_dto.dart';
import 'package:daily_cd_player/data/model/pagination_meta_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'abstract_response_dto.dart';
import 'converter/datetime_converter.dart';
part 'music_response_dto.freezed.dart';
part 'music_response_dto.g.dart';

@freezed
class MusicListResponseDTO with _$MusicListResponseDTO implements ResponseDTO {
  @JsonSerializable(explicitToJson: true)
  factory MusicListResponseDTO(
          {@JsonKey(name: 'albums', readValue: _readAlbumValue)
          @Default(<MusicResponseDTO>[])
              List<MusicResponseDTO> list,
          @JsonKey(name: '@attr')
              required PaginaitonMetaResponse paginationMeta}) =
      _MusicListResponseDTO;

  factory MusicListResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$MusicListResponseDTOFromJson(json);
}

Object? _readAlbumValue(Map json, String key) {
  return json['albums'] = json['albums']['album'];
}

@freezed
class MusicResponseDTO with _$MusicResponseDTO implements ResponseDTO {
  @JsonSerializable(explicitToJson: true)
  factory MusicResponseDTO({
    @JsonKey(name: 'name') @Default('') String songName,
    @JsonKey(name: 'url') @Default('') String songUrl,
    @MusicImageConverter()
    @JsonKey(name: 'image')
    @Default([])
        List<MusicImageResponseDTO> songImageList,
    @JsonKey(name: 'artist') ArtistResponseDTO? artist,
  }) = _MusicResponseDTO;

  factory MusicResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$MusicResponseDTOFromJson(json);
}

class MusicImageConverter
    implements JsonConverter<List<MusicImageResponseDTO>, dynamic> {
  const MusicImageConverter();

  @override
  List<MusicImageResponseDTO> fromJson(dynamic imageList) {
    List<MusicImageResponseDTO> imageResponseList =
        (imageList as List<dynamic>).map(
      (e) {
        var imageResponseMap = e as Map<String, dynamic>? ?? {};
        return MusicImageResponseDTO(
          ImageSize.getByCode(imageResponseMap['size'] as String),
          imageResponseMap['#text'] as String? ?? '',
        );
      },
    ).toList();
    return imageResponseList;
  }

  @override
  List<dynamic> toJson(List<MusicImageResponseDTO> dto) => [];
}

class MusicImageResponseDTO {
  ImageSize imageSize;
  String imageUrl;

  MusicImageResponseDTO(this.imageSize, this.imageUrl);
}

enum ImageSize {
  small('small'),
  medium('medium'),
  large('large'),
  extralarge('extralarge');

  const ImageSize(this.code);
  final String code;

  factory ImageSize.getByCode(String code) {
    return ImageSize.values.firstWhere((value) => value.code == code);
  }
}
