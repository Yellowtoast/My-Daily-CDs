import 'package:daily_cd_player/core/theme/colors.dart';
import 'package:daily_cd_player/core/theme/size.dart';
import 'package:flutter/material.dart';

class RecommendView extends StatelessWidget {
  const RecommendView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
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
                padding: EdgeInsets.only(top: 15, left: 16, bottom: 15),
                margin: EdgeInsets.fromLTRB(23, 13, 23, 10),
                decoration: BoxDecoration(border: Border.all()),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('사교적이고 지도력이 있는 당신에게는'),
                      Text('현실을 인지하고 마주해야 할 하루일지도 모르겠군요.'),
                      Text('자만하지 않는 하루가 되도록 CD를 골라 봤어요.'),
                    ]),
              ),
              Positioned(
                  top: 0,
                  left: 8,
                  child: Image.asset(
                    'assets/icons/recommend/clip.png',
                    height: 40,
                  ))
            ],
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                      color: MyColors.white,
                      width: myWidth(context),
                      height: 70,
                      padding: const EdgeInsets.only(
                        left: 18,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/cd.png',
                            height: 47,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Container(
                                  margin: EdgeInsets.only(right: 20),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: MyColors.grey300
                                                  .withOpacity(0.8)))),
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
                                            'dittasdff',
                                            softWrap: false,
                                            style: Theme.of(context)
                                                .typography
                                                .black
                                                .headline2,
                                            overflow: TextOverflow.fade,
                                          ),
                                          Text(
                                            'new Jeans',
                                            maxLines: 1,
                                            softWrap: false,
                                            style: TextStyle(height: 1.4),
                                          ),
                                        ],
                                      )),
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 15, top: 10, bottom: 10),
                                        child: Image.asset(
                                          'assets/icons/archive/delete.png',
                                          height: 30,
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
          )
        ],
      )),
    );
  }
}
