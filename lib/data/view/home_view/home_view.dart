import 'package:daily_cd_player/core/theme/colors.dart';
import 'package:daily_cd_player/core/theme/size.dart';
import 'package:flutter/material.dart';

import '../../../routes/routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/cd.png',
              height: 135,
            ),
            Image.asset(
              'assets/images/app_icon.png',
              height: 44,
            ),
            Text(
              'Find Songs for your day',
              style: Theme.of(context).typography.englishLike.bodyText1,
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              width: (myWidth(context) - 75),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, Routes.RECOMMEND),
                      child: Column(
                        children: [
                          Container(
                            height: 135,
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(vertical: 25),
                            decoration: BoxDecoration(
                                color: MyColors.white,
                                border: Border.all(color: MyColors.black)),
                            child: Image.asset(
                              'assets/images/multiple_cds.png',
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            color: MyColors.black,
                            height: 35,
                            child: Text(
                              '오늘의 CD 추천',
                              style:
                                  Theme.of(context).typography.white.bodyText1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, Routes.ARCHIVE),
                    child: Column(
                      children: [
                        Container(
                          height: 135,
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 25),
                          decoration: BoxDecoration(
                              color: MyColors.white,
                              border: Border.all(color: MyColors.black)),
                          child: Image.asset(
                            'assets/images/cd_case.png',
                            // height: 90,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: MyColors.black,
                          height: 35,
                          child: Text(
                            '내 CD 보관함',
                            style: Theme.of(context).typography.white.bodyText1,
                          ),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
