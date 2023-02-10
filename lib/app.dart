import 'package:daily_cd_player/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/theme/text_theme.dart';

class MyDailyCDsApp extends ConsumerWidget {
  const MyDailyCDsApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: goRouter,
      theme: ThemeData(
        typography: myTypography,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
