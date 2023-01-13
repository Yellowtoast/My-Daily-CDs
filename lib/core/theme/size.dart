// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

double myWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double myHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double safeAreaPaddingTop(BuildContext context) {
  return MediaQuery.of(context).viewPadding.top + 8;
}
