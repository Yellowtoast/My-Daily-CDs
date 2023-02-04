import 'package:daily_cd_player/core/theme/colors.dart';
import 'package:daily_cd_player/core/theme/size.dart';
import 'package:daily_cd_player/data/enums/enums.dart';
import 'package:daily_cd_player/data/model/pagination_response.dart';
import 'package:daily_cd_player/data/view/recommend_view/recommend_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecommendView extends ConsumerStatefulWidget {
  const RecommendView({Key? key}) : super(key: key);

  @override
  ConsumerState<RecommendView> createState() => _RecommendViewState();
}

class _RecommendViewState extends ConsumerState<RecommendView>
    with WidgetsBindingObserver {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    scrollController.addListener(scrollListener);

    
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void scrollListener() {
    if (scrollController.offset >
        scrollController.position.maxScrollExtent - 300) {
      ref.read(recommendViewModelProvider.notifier).paginate(fetchMore: true);
    }
  }

  // 앱 상태 변경시 호출
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    //https://api.flutter.dev/flutter/dart-ui/AppLifecycleState-class.html
    switch (state) {
      case AppLifecycleState.resumed:
        // 앱이 표시되고 사용자 입력에 응답합니다.
        // 주의! 최초 앱 실행때는 해당 이벤트가 발생하지 않습니다.
        print("resumed");

        break;
      case AppLifecycleState.inactive:
        // 앱이 비활성화 상태이고 사용자의 입력을 받지 않습니다.
        // ios에서는 포 그라운드 비활성 상태에서 실행되는 앱 또는 Flutter 호스트 뷰에 해당합니다.
        // 안드로이드에서는 화면 분할 앱, 전화 통화, PIP 앱, 시스템 대화 상자 또는 다른 창과 같은 다른 활동이 집중되면 앱이이 상태로 전환됩니다.
        // inactive가 발생되고 얼마후 pasued가 발생합니다.
        print("inactive");
        break;
      case AppLifecycleState.paused:
        // 앱이 현재 사용자에게 보이지 않고, 사용자의 입력을 받지 않으며, 백그라운드에서 동작 중입니다.
        // 안드로이드의 onPause()와 동일합니다.
        // 응용 프로그램이 이 상태에 있으면 엔진은 Window.onBeginFrame 및 Window.onDrawFrame 콜백을 호출하지 않습니다.
        print("paused");
        break;
      case AppLifecycleState.detached:
        // 응용 프로그램은 여전히 flutter 엔진에서 호스팅되지만 "호스트 View"에서 분리됩니다.
        // 앱이 이 상태에 있으면 엔진이 "View"없이 실행됩니다.
        // 엔진이 처음 초기화 될 때 "View" 연결 진행 중이거나 네비게이터 팝으로 인해 "View"가 파괴 된 후 일 수 있습니다.
        print("detached");

        break;
    }
  }

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
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                width: myWidth(context),
                padding: const EdgeInsets.only(top: 14, left: 16, bottom: 14),
                margin: const EdgeInsets.fromLTRB(25, 13, 25, 10),
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
          Expanded(
            child: Consumer(builder: (context, ref, child) {
              final state = ref.watch(recommendViewModelProvider);

              if (state is PaginationLoading) {
                return SizedBox(
                  width: myWidth(context) - 200,
                  child: const Center(
                    child: LinearProgressIndicator(
                      backgroundColor: MyColors.grey200,
                      valueColor: AlwaysStoppedAnimation(Colors.black),
                      minHeight: 6,
                    ),
                  ),
                );
              }

              if (state is PaginationError) {
                return Text(state.errorObject.message);
              }

              final data = state as PaginationResponse;

              return ListView.builder(
                  controller: scrollController,
                  shrinkWrap: true,
                  itemCount: data.list.length + 1,
                  itemBuilder: (context, index) {
                    if (index == data.list.length) {
                      return Center(
                        child: data is PaginationFetchingMore
                            ? const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: CircularProgressIndicator(
                                  color: MyColors.black,
                                ),
                              )
                            : const SizedBox.shrink(),
                      );
                    }

                    final musicItem = data.list[index];

                    return Container(
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
                          Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 2,
                                        color: MyColors.black.withOpacity(0.2))
                                  ]),
                              child: Image.network(
                                musicItem.songImageList[2].imageUrl,
                                height: 44,
                                loadingBuilder:
                                    (context, child, loadingProgress) =>
                                        CircleAvatar(
                                  radius: 22,
                                  backgroundColor: MyColors.grey100,
                                  child: child,
                                ),
                                frameBuilder: (context, child, frame,
                                        wasSynchronouslyLoaded) =>
                                    Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    child,
                                    Positioned(
                                        child: Image.asset(
                                      'assets/images/empty_cd.png',
                                      width: 17,
                                      height: 17,
                                    ))
                                  ],
                                ),
                                errorBuilder: (context, error, stackTrace) =>
                                    Image.asset(
                                  'assets/images/cd.png',
                                  height: 44,
                                ),
                              )),
                          const SizedBox(
                            width: 13,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Container(
                                  margin: const EdgeInsets.only(right: 20),
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
                                            data.list[index].artist?.name ?? '',
                                            maxLines: 1,
                                            softWrap: false,
                                            style: const TextStyle(height: 1.4),
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
                                          padding: const EdgeInsets.only(
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
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 10, bottom: 10),
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
                    );
                  });
            }),
          )
        ],
      )),
    );
  }
}
