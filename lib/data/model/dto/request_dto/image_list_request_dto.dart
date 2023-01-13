import '../../../../core/network_handling/network_handling.dart';
import '../../../../core/values/api_url.dart';
import '../../../../helpers/pagination/paginaiton_filter_model.dart';
import '../../../enums/enums.dart';
import 'abstract_request_dto.dart';

class GetImageListRequestDTO implements RequestDTO {
  late final String _query;
  late final int _page;
  late final int _size;
  late final SortType _sortType;

  @override
  String get url => HttpUrl.BASE_URL;

  @override
  String get apiMethod => HttpUrl.GET_MUSIC_TAG;

  @override
  Map<String, dynamic> get apiInfoMap => {
        'method': apiMethod,
        'api_key': RequestDTO.restApiKey,
        'format': RequestDTO.dataFormat,
      };

  @override
  Map<String, dynamic> get dataMap => {
        'query': _query,
        'page': _page,
        'size': _size,
        'sort': _sortType.code,
      };

  @override
  RequestType get requestType => RequestType.GET;

  GetImageListRequestDTO(this._query, this._page, this._size, this._sortType);

  factory GetImageListRequestDTO.fromDTO(
      {required String keyword, required PaginationFilter paginationFilter}) {
    return GetImageListRequestDTO(keyword, paginationFilter.page,
        paginationFilter.listSize, SortType.recency);
  }
}
