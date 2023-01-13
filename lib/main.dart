import 'package:daily_cd_player/routes/pages.dart';
import 'package:daily_cd_player/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/theme/colors.dart';
import 'core/theme/text_theme.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: MyColors.white,
        typography: myTypography,
      ),
      initialRoute: Routes.HOME,
      routes: MyPages.pages,
    );
  }
}
