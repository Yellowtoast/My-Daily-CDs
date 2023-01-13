import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../core/theme/theme_import.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({
    Key? key,
    this.height,
  }) : super(key: key);
  final double? height;
  static const String _loadingAssetUrl = 'assets/jsons/loading.json';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.white,
      height: height ?? myHeight(context) - 100,
      child: SizedBox(
        height: myHeight(context) - 100,
        child: OverflowBox(
          minHeight: 140,
          maxHeight: 140,
          child: Lottie.asset(_loadingAssetUrl),
        ),
      ),
    );
  }
}
