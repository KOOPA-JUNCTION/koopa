import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../../../../generated/locales.g.dart';
import '../../../routes/app_pages.dart';
import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  const RootView({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Navigator(
            key: controller.navigatorKey,
            initialRoute: Routes.HOME,
            onGenerateRoute: controller.onGenerateRoute,
          ),
          Obx(
            () => controller.centerOpened.isTrue
                ? Container(
                    color: Colors.black.withOpacity(.4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Get.theme.colorScheme.secondary,
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(32),
                                  onTap: controller.goToGetPhoto,
                                  child: const Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Icon(
                                      Icons.photo_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            if (!GetPlatform.isWeb) const SizedBox(width: 60),
                            if (!GetPlatform.isWeb)
                              Container(
                                decoration: BoxDecoration(
                                  color: Get.theme.colorScheme.secondary,
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(32),
                                    onTap: controller.goToGetCamera,
                                    child: const Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Icon(
                                        Icons.camera_alt_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  )
                : Container(),
          )
        ],
      ),
      floatingActionButton: Obx(
        () => FloatingActionButton(
          onPressed: controller.centerOpened.toggle,
          child: Icon(controller.centerOpened.isTrue ? Icons.close : Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
            const BottomNavigationBarItem(
              label: '',
              icon: SizedBox(width: 0, height: 0),
            ),
            _getBottomNavigationBarItem(LocaleKeys.home_search.tr, 'search'),
            _getBottomNavigationBarItem(LocaleKeys.home_profile.tr, 'profile'),
          ],
        ),
      ),
    );
  }
}
