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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/cd.png',
                height: 125,
              ),
              SizedBox(
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
                      onTap: () =>
                          Navigator.pushNamed(context, Routes.RECOMMEND),
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
              )
            ],
          ),
        ),
      )),
    );
  }
}

class HomeMenuButton extends StatelessWidget {
  const HomeMenuButton({
    Key? key,
    required String imageAssetSrc,
    required void Function() onTap,
    required String menuLabel,
  })  : _imageAsset = imageAssetSrc,
        _onTap = onTap,
        _menuLabel = menuLabel,
        super(key: key);

  final String _imageAsset;
  final void Function() _onTap;
  final String _menuLabel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Column(
        children: [
          Container(
            height: 135,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 25),
            decoration: BoxDecoration(
                color: MyColors.white,
                border: Border.all(color: MyColors.black)),
            child: Image.asset(
              _imageAsset,
              // height: 90,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: MyColors.black,
            height: 35,
            child: Text(
              _menuLabel,
              style: Theme.of(context).typography.white.bodyText1,
            ),
          )
        ],
      ),
    );
  }
}
