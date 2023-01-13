import 'package:daily_cd_player/data/view/archive_view/archive_view.dart';
import 'package:daily_cd_player/data/view/recommend_view/recommend_view.dart';
import 'package:flutter/material.dart';

import '../data/view/home_view/home_view.dart';
import 'routes.dart';

class MyPages {
  static final pages = <String, WidgetBuilder>{
    Routes.HOME: (BuildContext context) => const HomeView(),
    Routes.RECOMMEND: (BuildContext context) => const RecommendView(),
    Routes.ARCHIVE: (BuildContext context) => const ArchiveView(),
  };
}
