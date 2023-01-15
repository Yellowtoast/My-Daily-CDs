import 'package:daily_cd_player/data/model/dto/request_dto/abstract_request_dto.dart';
import '../../../core/network_handling/network_handling.dart';

final Map<String, dynamic> defaultHeader = {
  'Content-type': 'application/json',
};

class ApiCallDTO {
  String url;
  Map<String, dynamic>? header;
  Map<String, dynamic>? data;
  RequestType requestType;

  ApiCallDTO._(
      {required this.url,
      required this.data,
      required this.requestType,
      this.header});

  factory ApiCallDTO.fromDTO(RequestDTO requestDTO) {
    var header = Map<String, dynamic>.from(defaultHeader);
    var apiInfoMap = {
      'method': requestDTO.apiMethod,
      'api_key': RequestDTO.restApiKey,
      'format': RequestDTO.dataFormat,
    };

    return ApiCallDTO._(
        url: requestDTO.url,
        header: header,
        data: {...apiInfoMap, ...requestDTO.dataMap},
        requestType: requestDTO.requestType);
  }
}
