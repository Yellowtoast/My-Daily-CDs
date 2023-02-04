import 'dart:async';

import 'package:daily_cd_player/core/theme/colors.dart';
import 'package:daily_cd_player/core/theme/size.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import '../../../routes/routes.dart';
import 'widgets/menu_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();

    // try {
    //   final userCredential = FirebaseAuth.instance.signInAnonymously();
    //   print("Signed in with temporary account.");
    // } on FirebaseAuthException catch (e) {
    //   switch (e.code) {
    //     case "operation-not-allowed":
    //       print("Anonymous auth hasn't been enabled for this project.");
    //       break;
    //     default:
    //       print("Unknown error.");
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/cd.png',
                height: 125,
              ),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                'assets/images/app_icon.png',
                height: 44,
              ),
              Text(
                'Find Songs for your day',
                style: Theme.of(context).typography.englishLike.bodyText1,
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                width: myWidth(context) - 75,
                child: Row(
                  children: [
                    Expanded(
                        child: HomeMenuButton(
                      imageAssetSrc: 'assets/images/multiple_cds.png',
                      menuLabel: '오늘의 CD 추천',
                      onTap: () async {
                        Navigator.pushNamed(context, Routes.RECOMMEND);

                        await FirebaseAnalytics.instance.logEvent(
                          name: "share_image",
                          parameters: {
                            "image_name": 'asdf',
                            "full_text": 'asdfadsf',
                          },
                        );
                      },
                    )),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: HomeMenuButton(
                      imageAssetSrc: 'assets/images/cd_case.png',
                      menuLabel: '내 CD 보관함',
                      onTap: () => Navigator.pushNamed(context, Routes.ARCHIVE),
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
