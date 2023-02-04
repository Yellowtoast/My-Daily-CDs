import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';

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
