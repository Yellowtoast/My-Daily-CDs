import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../core/theme/theme_import.dart';

class TestLoadingWidget extends StatelessWidget {
  const TestLoadingWidget({
    Key? key,
    this.height,
  }) : super(key: key);
  final double? height;
  static const String _loadingAssetUrl = 'assets/images/multiple_cds.png';

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: MyColors.white,
        height: myHeight(context),
        width: myWidth(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              _loadingAssetUrl,
              width: 90,
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: myWidth(context) - 150,
              child: LinearProgressIndicator(
                backgroundColor: MyColors.grey200,
                color: MyColors.black,
                value: 20,
                minHeight: 6,
              ),
            ),
          ],
        ));
  }
}
