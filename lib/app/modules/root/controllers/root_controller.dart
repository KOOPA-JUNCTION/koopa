import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koopa/app/modules/home/bindings/home_binding.dart';
import 'package:koopa/app/modules/home/views/home_view.dart';
import 'package:koopa/app/modules/profile/bindings/profile_binding.dart';
import 'package:koopa/app/modules/profile/views/profile_view.dart';
import 'package:koopa/app/modules/search/bindings/search_binding.dart';
import 'package:koopa/app/modules/search/views/search_view.dart';
import 'package:koopa/app/modules/stats/bindings/stats_binding.dart';
import 'package:koopa/app/modules/stats/views/stats_view.dart';

import '../../../routes/app_pages.dart';

class RootController extends GetxController {
  final _navigatorKey = Random().nextInt(65535);
  late final navigatorKey = Get.nestedKey(_navigatorKey);
  final _pageIndex = 0.obs;
  int get pageIndex => _pageIndex.value;
  final _pages = [
    Routes.HOME,
    Routes.STATS,
    '',
    Routes.SEARCH,
    Routes.PROFILE,
  ];

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.HOME:
        return GetPageRoute(
          transition: Transition.noTransition,
          settings: settings,
          page: () => const HomeView(),
          binding: HomeBinding(),
        );
      case Routes.STATS:
        return GetPageRoute(
          transition: Transition.noTransition,
          settings: settings,
          page: () => const StatsView(),
          binding: StatsBinding(),
        );
      case Routes.SEARCH:
        return GetPageRoute(
          transition: Transition.noTransition,
          settings: settings,
          page: () => const SearchView(),
          binding: SearchBinding(),
        );
      case Routes.PROFILE:
        return GetPageRoute(
          transition: Transition.noTransition,
          settings: settings,
          page: () => const ProfileView(),
          binding: ProfileBinding(),
        );
      default:
        return GetPageRoute(settings: settings, page: () => Container());
    }
  }

  void changePage(int index) {
    if (_pageIndex.value == index) return;
    if (_pages[index] == '') return;
    _pageIndex(index);
    Get.offAllNamed(_pages[index], id: _navigatorKey);
  }
}
