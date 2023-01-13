import 'package:dartz/dartz.dart';

import '../../core/error_handling/failures.dart';
import '../../helpers/pagination/paginaiton_filter_model.dart';
import '../model/dto/response_dto/image_list_response_dto.dart';

abstract class MusicRepositoyInterface {
  Future<Either<Failure, ImageListResponseDTO>> fetchImageList(
      {required PaginationFilter paginationFilter, required String keyword});
}
