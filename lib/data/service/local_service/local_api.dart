import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network_handling/network_handling.dart';
import '../../model/dto/api_call_dto.dart';

final localApiProvider = Provider((ref) => LocalAPI());

abstract class LocalAPIInterface {
  Future fetchMusicList(ApiCallDTO model);
}

class LocalAPI implements LocalAPIInterface {
  final Api _dio = Api();

  @override
  Future<Map<String, dynamic>> fetchMusicList(ApiCallDTO apiCallDTO) async {
    Map<String, dynamic> musicListData = await _dio.apiCall(apiCallDTO);
    return musicListData;
  }
}
