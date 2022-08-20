import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../../../../generated/locales.g.dart';
import '../../../routes/app_pages.dart';
import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  const RootView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    BottomNavigationBarItem _getBottomNavigationBarItem(
            String label, String iconPath) =>
        BottomNavigationBarItem(
          label: label,
          icon: SvgPicture.asset(
            'assets/icons/$iconPath.svg',
            color: const Color(0xff7e7e7d),
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/$iconPath.svg',
            color: const Color(0xff1e299c),
          ),
        );

    return Scaffold(
      body: Navigator(
        key: controller.navigatorKey,
        initialRoute: Routes.HOME,
        onGenerateRoute: controller.onGenerateRoute,
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          onTap: controller.changePage,
          currentIndex: controller.pageIndex,
          selectedItemColor: const Color(0xff1e299c),
          unselectedItemColor: const Color(0xff7e7e7d),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          items: [
            _getBottomNavigationBarItem(LocaleKeys.home_title.tr, 'home'),
            _getBottomNavigationBarItem(LocaleKeys.home_stats.tr, 'stats'),
            _getBottomNavigationBarItem(LocaleKeys.home_search.tr, 'search'),
            _getBottomNavigationBarItem(LocaleKeys.home_search.tr, 'search'),
            _getBottomNavigationBarItem(LocaleKeys.home_profile.tr, 'profile'),
          ],
        ),
      ),
    );
  }
}
