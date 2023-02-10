import 'dart:async';

import 'package:daily_cd_player/core/error_handling/error_message_object.dart';
import 'package:daily_cd_player/data/enums/enums.dart';
import 'package:daily_cd_player/data/model/pagination_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  late Timer _timer;

  late bool _hasTestAccess;

  _init() {
    // _setMidnightTimer();

    // final midnightTime = DateTime(
    //     DateTime.now().year, DateTime.now().month, DateTime.now().day, 24);
    // final timeLeftUntilMidnight = midnightTime.difference(DateTime.now());
    // print('자정까지 남은 시간 : ${timeLeftUntilMidnight.inHours}');
    // final needTimer = timeLeftUntilMidnight < const Duration(hours: 10);
    // if (needTimer) {
    //   _initNewTimer();
    // }

    validateTestAccess();
  }

  validateTestAccess() async {
    final prefs = await SharedPreferences.getInstance();
    _hasTestAccess = prefs.getBool('hasAccess') ?? false;
    if (!_hasTestAccess) {
      _initNewTimer();
    }
  }

  _initNewTimer() async {
    final currentDateTime = DateTime.now();
    final midnightTime = DateTime(
        currentDateTime.year, currentDateTime.month, currentDateTime.day, 24);
    final timeLeftUntilMidnight = midnightTime.difference(currentDateTime);
    _startMidnightTimer(timeLeftUntilMidnight);
  }

  _startMidnightTimer(Duration duration) {
    print('timer started');
    // _timer = Timer(duration, () => _atMidnight());

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      var myDuration = Duration(minutes: 1) - Duration(seconds: timer.tick);

      if (myDuration.isNegative) {
        _atMidnight();
        return;
      }

      String strDigits(int n) => n.toString().padLeft(2, '0');
      final days = strDigits(myDuration.inDays);
      // Step 7
      final hours = strDigits(myDuration.inHours.remainder(24));
      final minutes = strDigits(myDuration.inMinutes.remainder(60));
      final seconds = strDigits(myDuration.inSeconds.remainder(60));
      print('${hours}시간 ${minutes}분 ${seconds}초');
    });
  }

  _atMidnight() {
    print('자정이 되었습니다');
    cancleMidnightTimer();
  }

  cancleMidnightTimer() async {
    _timer.cancel();
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
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
