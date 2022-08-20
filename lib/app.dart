import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:koopa/utils/translation_service.dart';

import 'app/routes/app_pages.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      translations: TranslationService(),
      fallbackLocale: TranslationService.fallbackLocale,
      locale: TranslationService.locale,
      theme: ThemeData(
        fontFamily: 'Pretendard',
        colorScheme: Get.theme.colorScheme.copyWith(
          primary: const Color(0xff1e299c),
          secondary: const Color(0xff1e299c),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF5F5F5),
          foregroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
        ),
        scaffoldBackgroundColor: Colors.white, 
      ),
    );
  }
}
