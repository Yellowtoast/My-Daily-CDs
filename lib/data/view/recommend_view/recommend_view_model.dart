import 'package:daily_cd_player/core/error_handling/error_message_object.dart';
import 'package:daily_cd_player/data/enums/enums.dart';
import 'package:daily_cd_player/data/model/pagination_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/dto/request_dto/pagination_request_dto.dart';
import '../../repository/music_repository.dart';

final recommendViewModelProvider =
    StateNotifierProvider<RecommendViewModel, PaginationBase>((ref) {
  final repository = ref.watch(musicRepositoryProvider);
  final viewModelProvider = RecommendViewModel(repository as MusicRepository);
  return viewModelProvider;
});

class RecommendViewModel extends StateNotifier<PaginationBase> {
  final MusicRepository _repository;
  RecommendViewModel(this._repository) : super(PaginationLoading()) {
    _init();
    // paginate();
  }

  _init() {
    _checkTestForTodayAvaliable();
  }

  _checkTestForTodayAvaliable() {
    // 로컬 스토리지에서 오늘
  }

  paginate({
    int fetchLimit = 20,
    bool fetchMore = false,
    bool forceRefetch = false,
    List<ColorTest> selectedColors = const [
      ColorTest.blue,
      ColorTest.green,
      ColorTest.navy
    ],
  }) async {
    if (state is PaginationResponse && !forceRefetch) {
      final pState = state as PaginationResponse;

      if (!pState.meta.hasMore) {
        return;
      }
    }

    final isLoading = state is PaginationLoading;
    final isRefetching = state is PaginationRefetching;
    final isFetchingMore = state is PaginationFetchingMore;

    if (fetchMore && (isLoading || isRefetching || isFetchingMore)) {
      return;
    }

    var paginationRequest = PaginationRequest(limit: fetchLimit);

    if (fetchMore) {
      final pState = state as PaginationResponse;

      state = PaginationFetchingMore(
        list: pState.list,
        meta: pState.meta,
      );

      paginationRequest = paginationRequest.copyWith(
        page: pState.meta.currentPage + 1,
      );
    } else {
      if (state is PaginationResponse && !forceRefetch) {
        final pState = state as PaginationResponse;
        state = PaginationRefetching(
          list: pState.list,
          meta: pState.meta,
        );
      } else {
        state = PaginationLoading();
      }
    }

    final responseEither = await _repository.fetchMusicList(
      paginationRequest: paginationRequest,
      selectedColors: selectedColors,
    );

    if (state is PaginationFetchingMore) {
      final pState = state as PaginationFetchingMore;

      responseEither.fold(
        (failure) => state = PaginationError(
          errorObject: ErrorObject.mapFailureToErrorMessage(failure: failure),
        ),
        (response) => state = response.copyWith(
          list: [...pState.list, ...response.list],
        ),
      );
    } else {
      state = responseEither.fold(
        (failure) => state = PaginationError(
          errorObject: ErrorObject.mapFailureToErrorMessage(failure: failure),
        ),
        (response) => response,
      );
    }
  }
}
