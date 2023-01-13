import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/error_handling/exceptions.dart';
import '../../core/error_handling/failures.dart';
import '../../helpers/pagination/paginaiton_filter_model.dart';
import '../model/dto/api_call_dto.dart';
import '../model/dto/request_dto/image_list_request_dto.dart';
import '../model/dto/response_dto/image_list_response_dto.dart';
import '../service/search_api.dart';
import 'music_interface.dart';

final memeServiceProvider = Provider<MusicRepositoyInterface>(
    (ref) => MusicRepository(ref.watch(musicApiProvider)));

class MusicRepository implements MusicRepositoyInterface {
  final MusicAPI _api;
  MusicRepository(this._api);

  @override
  Future<Either<Failure, ImageListResponseDTO>> fetchImageList(
      {required PaginationFilter paginationFilter,
      required String keyword}) async {
    try {
      var requestDTO = GetImageListRequestDTO.fromDTO(
          keyword: keyword, paginationFilter: paginationFilter);
      ApiCallDTO apiCallDTO = ApiCallDTO.fromDTO(requestDTO);
      Map<String, dynamic> data = await _api.fetchImageList(apiCallDTO);

      try {
        ImageListResponseDTO imageListResponseDTO =
            ImageListResponseDTO.fromJson(data);
        return Right(imageListResponseDTO);
      } catch (e) {
        throw DataParsingException();
      }
    } on NoInternetConnectionException {
      return const Left(NoConnectionFailure());
    } on DataParsingException {
      return const Left(DataParsingFailure());
    } on NotFoundException {
      return const Left(NotFoundFailure());
    } on WrongTextException {
      return const Left(WrongTextFailure());
    } catch (e) {
      return const Left(NoConnectionFailure());
    }
  }
}
