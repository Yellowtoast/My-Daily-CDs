import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network_handling/network_handling.dart';
import '../../model/dto/api_call_dto.dart';

final musicApiProvider = Provider((ref) => MusicAPI());

abstract class MusicAPIInterface {
  Future fetchMusicList(ApiCallDTO model);
}

class MusicAPI implements MusicAPIInterface {
  final Api _dio = Api();

  @override
  Future<Map<String, dynamic>> fetchMusicList(ApiCallDTO apiCallDTO) async {
    Map<String, dynamic> musicListData = await _dio.apiCall(apiCallDTO);
    return musicListData;
  }
}
