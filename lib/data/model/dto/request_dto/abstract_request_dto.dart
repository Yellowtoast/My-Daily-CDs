import '../../../../core/network_handling/network_handling.dart';
import '../../../../core/values/constants.dart';

abstract class RequestDTO {
  Map<String, dynamic> get dataMap;
  RequestType get requestType;
  String get apiMethod;
  String get url;
  static const restApiKey = Constants.REST_API_KEY;
  static const dataFormat = Constants.DATA_FORMAT;
}
