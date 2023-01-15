import '../../../../core/network_handling/network_handling.dart';
import '../../../../core/values/api_url.dart';
import '../../../../helpers/pagination/paginaiton_filter_model.dart';
import '../../../enums/enums.dart';
import 'abstract_request_dto.dart';

class MusicListRequestDTO implements RequestDTO {
  late final int _page;
  late final int _size;
  final List<MusicTag> _musicTags;

  @override
  String get url => HttpUrl.BASE_URL;

  @override
  String get apiMethod => HttpUrl.GET_TOP_MUSIC_ALBUMS;

  @override
  Map<String, dynamic> get dataMap => {
        'tag': _musicTags.map((e) => e.tagCode).join(' '),
        'page': _page,
        'limit': _size,
      };

  @override
  RequestType get requestType => RequestType.GET;

  MusicListRequestDTO(this._page, this._size, this._musicTags);

  factory MusicListRequestDTO.fromDTO(
      {required List<ColorTest> selectedColors,
      required PaginationFilter paginationFilter}) {
    List<MusicTag> musicTags = selectedColors.getMusicTags();

    return MusicListRequestDTO(
      paginationFilter.page,
      paginationFilter.listSize,
      musicTags,
    );
  }
}
