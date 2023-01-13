import 'package:flutter/material.dart';
import '../../core/theme/theme_import.dart';

class MyErrorWidget extends StatelessWidget {
  const MyErrorWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.message,
    this.height,
  }) : super(key: key);

  final Widget image;
  final String title;
  final String message;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return (height != null)
        ? SizedBox(
            height: height,
            width: myWidth(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // image,
                CircleAvatar(
                  radius: 43,
                  backgroundColor: MyColors.grey200.withOpacity(0.5),
                  child: image,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  title,
                  style: Theme.of(context).typography.black.headline1,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  message,
                  style: Theme.of(context).typography.black.headline2,
                ),
              ],
            ))
        : Expanded(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              image,
              const SizedBox(
                height: 11,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontFamily: MyFontFamily.spoqaHanSans,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    height: 1.3,
                    color: MyColors.black),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                message,
                style: const TextStyle(
                    fontFamily: MyFontFamily.spoqaHanSans,
                    fontSize: 15,
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                    color: MyColors.black),
              ),
            ],
          ));
  }
}
