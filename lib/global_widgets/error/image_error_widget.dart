import 'package:flutter/material.dart';
import '../../core/theme/theme_import.dart';

class ImageErrorWidget extends StatelessWidget {
  const ImageErrorWidget({
    Key? key,
    double? height,
    IconData? iconData,
  })  : _height = height ?? 300,
        _iconData = iconData ?? Icons.image_not_supported_rounded,
        super(key: key);

  final double _height;
  final IconData _iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      width: myWidth(context),
      decoration: const BoxDecoration(
        color: MyColors.white,
      ),
      child: Icon(
        _iconData,
        size: 50,
        color: MyColors.grey300,
      ),
    );
  }
}
