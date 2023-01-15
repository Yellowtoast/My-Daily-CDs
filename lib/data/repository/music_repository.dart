import 'package:daily_cd_player/data/model/dto/response_dto/music_response_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/error_handling/exceptions.dart';
import '../../core/error_handling/failures.dart';
import '../../helpers/pagination/paginaiton_filter_model.dart';
import '../enums/enums.dart';
import '../model/dto/api_call_dto.dart';
import '../model/dto/request_dto/music_request_dto.dart';
import '../service/remote_service/music_api.dart';

final musicRepositoryProvider = Provider<MusicRepositoyInterface>(
    (ref) => MusicRepository(ref.watch(musicApiProvider)));

abstract class MusicRepositoyInterface {
  Future<Either<Failure, MusicListResponseDTO>> fetchMusicList(
      {required PaginationFilter paginationFilter,
      required List<ColorTest> selectedColors});
}

class MusicRepository implements MusicRepositoyInterface {
  final MusicAPI _api;
  MusicRepository(this._api);

  @override
  Future<Either<Failure, MusicListResponseDTO>> fetchMusicList(
      {required PaginationFilter paginationFilter,
      required List<ColorTest> selectedColors}) async {
    try {
      var requestDTO = MusicListRequestDTO.fromDTO(
          selectedColors: selectedColors, paginationFilter: paginationFilter);
      ApiCallDTO apiCallDTO = ApiCallDTO.fromDTO(requestDTO);
      Map<String, dynamic> data = await _api.fetchMusicList(apiCallDTO);

      try {
        MusicListResponseDTO imageListResponseDTO =
            MusicListResponseDTO.fromJson(data);
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
