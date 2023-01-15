import 'package:daily_cd_player/core/error_handling/error_message_object.dart';
import 'package:daily_cd_player/data/enums/enums.dart';
import 'package:daily_cd_player/data/model/dto/response_dto/music_response_dto.dart';
import 'package:daily_cd_player/data/service/remote_service/music_api.dart';
import 'package:daily_cd_player/helpers/pagination/paginaiton_filter_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../repository/music_repository.dart';

final recommendViewModelProvider = Provider((ref) => RecommendViewModel());

class RecommendViewModel {
  Future<MusicListResponseDTO> getMusicList(WidgetRef ref) async {
    var getMusicListEither = await ref
        .read(musicRepositoryProvider)
        .fetchMusicList(
            paginationFilter: PaginationFilter(page: 1, listSize: 10),
            selectedColors: [ColorTest.blue, ColorTest.green, ColorTest.navy]);

    return getMusicListEither.fold(
      (failure) => throw ErrorObject.mapFailureToErrorMessage(failure: failure),
      (musicList) => musicList,
    );
  }

  final navigatorKey = GlobalKey<NavigatorState>();

  // void showDialogFlash({String title = '', String? content}) {
  //   navigatorKey.currentContext!.showFlashDialog(
  //       constraints: const BoxConstraints(maxWidth: 300),
  //       title: Text(title, style: const TextStyle(fontSize: 16)),
  //       content: Text(content!, style: const TextStyle(fontSize: 14)),
  //       negativeActionBuilder: (context, controller, _) {
  //         return TextButton(
  //           onPressed: () => controller.dismiss(),
  //           child: const Text('CANCEL'),
  //         );
  //       },
  //       positiveActionBuilder: (context, controller, _) {
  //         return TextButton(
  //             onPressed: () {
  //               controller.dismiss();
  //             },
  //             child: const Text('OK'));
  //       });
  // }

  void checkInternetConnectivity(WidgetRef ref) {
    showDialog(
      context: navigatorKey.currentContext!,
      builder: (context) => Builder(builder: (context) {
        return Container(
          height: 100,
          width: 100,
          color: Colors.amber,
        );
      }),
    );
  }
}

final navigatorKey = GlobalKey<NavigatorState>();
void checkInternetConnectivity(WidgetRef ref) {
  showDialog(
    context: navigatorKey.currentContext!,
    builder: (context) => Builder(builder: (context) {
      return Container(
        height: 100,
        width: 100,
        color: Colors.amber,
      );
    }),
  );
}
