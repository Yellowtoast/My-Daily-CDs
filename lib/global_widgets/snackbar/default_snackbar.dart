import 'package:daily_cd_player/core/theme/colors.dart';
import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar(String content, {super.key}) : _content = content;

  final String _content;

  @override
  Widget build(BuildContext context) {
    return SnackBar(
        content: Text(
          _content,
          textAlign: TextAlign.center,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(vertical: 15),
        duration: const Duration(milliseconds: 1500),
        backgroundColor: const Color.fromARGB(227, 41, 41, 41));
  }
}

// showCustomSnackbar(
//         {required String text,
//         Duration? animationDuration,
//         Duration? totalDuration,
//         SnackPosition? snackPosition}) =>
//     Get.showSnackbar(GetSnackBar(
//       // snackStyle: SnackStyle.FLOATING,
//       dismissDirection: DismissDirection.none,
//       backgroundColor: const Color.fromARGB(227, 41, 41, 41),
//       barBlur: 10,
//       forwardAnimationCurve: Curves.decelerate,
//       reverseAnimationCurve: Curves.easeInOut,
//       margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
//       padding: const EdgeInsets.symmetric(vertical: 15),
//       borderRadius: 10,
//       titleText: Text(
//         text,
//         // style: const TextStyle(
//         //     fontFamily: WcFontFamily.notoSans,
//         //     height: 1.5,
//         //     fontSize: 16,
//         //     fontWeight: FontWeight.normal,
//         //     color: WcColors.white),
//         textAlign: TextAlign.center,
//       ),
//       messageText: const SizedBox.shrink(),
//       animationDuration: animationDuration ?? const Duration(milliseconds: 300),
//       duration: totalDuration ?? const Duration(milliseconds: 1500),
//       snackPosition: snackPosition ?? SnackPosition.BOTTOM,
//     ));
