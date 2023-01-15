import 'package:daily_cd_player/core/error_handling/error_message_object.dart';
import 'package:daily_cd_player/core/theme/colors.dart';
import 'package:daily_cd_player/core/theme/size.dart';
import 'package:daily_cd_player/data/enums/enums.dart';
import 'package:daily_cd_player/data/view/recommend_view/recommend_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final recommendViewFutureProvider = FutureProvider.family(
    (ref, WidgetRef widgetRef) async =>
        ref.watch(recommendViewModelProvider).getMusicList(widgetRef));

final counterStateProvider = StateProvider<int>((_) => 0);

class RecommendView extends StatelessWidget {
  const RecommendView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommend\nme CDs',
                  style: Theme.of(context).typography.englishLike.headline1,
                ),
                Image.asset(
                  'assets/images/multiple_cds.png',
                  height: 90,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                width: myWidth(context),
                padding: EdgeInsets.only(top: 14, left: 16, bottom: 14),
                margin: EdgeInsets.fromLTRB(25, 13, 25, 10),
                decoration: BoxDecoration(border: Border.all()),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${ColorTest.blue.feeling} 하루를 원한다면'),
                      Text('${ColorTest.blue.needs} 시점일수도 있겠네요.'),
                      Text('${ColorTest.blue.advice} CD를 골라 봤어요.'),
                    ]),
              ),
              Positioned(
                  top: 0,
                  left: 10,
                  child: Image.asset(
                    'assets/icons/recommend/clip.png',
                    height: 40,
                  ))
            ],
          ),
          Consumer(builder: (context, ref, child) {
            final musicList = ref.watch(recommendViewFutureProvider(ref));

            return Expanded(
              child: musicList.when(
                  data: (data) => ListView.builder(
                      shrinkWrap: true,
                      itemCount: data.list.length,
                      itemBuilder: (context, index) => Container(
                            color: MyColors.white,
                            width: myWidth(context),
                            height: 70,
                            padding: const EdgeInsets.only(
                              left: 15,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        ClipOval(
                                            child: Image.network(
                                          data.list[index].songImageList[2]
                                              .imageUrl,
                                          height: 44,
                                          loadingBuilder: (context, child,
                                                  loadingProgress) =>
                                              CircleAvatar(
                                            radius: 22,
                                            backgroundColor: MyColors.grey200,
                                            child: child,
                                          ),
                                          errorBuilder:
                                              (context, error, stackTrace) =>
                                                  Image.asset(
                                            'assets/images/cd.png',
                                            height: 44,
                                          ),
                                        )),
                                        Positioned(
                                            child: Image.asset(
                                          'assets/images/empty_cd.png',
                                          width: 20,
                                        ))
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: Container(
                                        margin: EdgeInsets.only(right: 20),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: MyColors.grey300
                                                        .withOpacity(0.6)))),
                                        child: Row(
                                          children: [
                                            Expanded(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  data.list[index].songName,
                                                  softWrap: false,
                                                  style: Theme.of(context)
                                                      .typography
                                                      .black
                                                      .headline2,
                                                  overflow: TextOverflow.fade,
                                                ),
                                                Text(
                                                  data.list[index].artist
                                                          ?.name ??
                                                      '',
                                                  maxLines: 1,
                                                  softWrap: false,
                                                  style: TextStyle(height: 1.4),
                                                ),
                                              ],
                                            )),
                                            GestureDetector(
                                              onTap: () {
                                                String query =
                                                    "${data.list[index].artist?.name ?? ''} ${data.list[index].songName} album";
                                                // data.list[index].songName +
                                                //     " " +
                                                //     (data.list[index].artist
                                                //             ?.name ??
                                                //         '') +
                                                //     'album';

                                                // UrlLauncher.launchLink(
                                                //     'https://www.youtube.com/results?search_query=${query}');

                                                // UrlLauncher.launchLink(
                                                //     data.list[index].songUrl);
                                              },
                                              child: Container(
                                                color: Colors.transparent,
                                                padding: EdgeInsets.only(
                                                    left: 12,
                                                    top: 10,
                                                    bottom: 15,
                                                    right: 3),
                                                child: Image.asset(
                                                  'assets/images/headphone.png',
                                                  height: 29,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                  left: 10,
                                                  top: 10,
                                                  bottom: 10),
                                              child: Image.asset(
                                                'assets/images/cd_case.png',
                                                height: 28,
                                              ),
                                            )
                                          ],
                                        ),
                                      ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                  error: (error, stackTrace) => Center(
                        child: Text(
                          (error as ErrorObject).message,
                        ),
                      ),
                  loading: () => SizedBox(
                        width: myWidth(context) - 200,
                        child: const Center(
                          child: LinearProgressIndicator(
                            backgroundColor: MyColors.grey200,
                            valueColor: AlwaysStoppedAnimation(Colors.black),
                            minHeight: 6,
                          ),
                        ),
                      )),
            );
          })
        ],
      )),
    );
  }
}
