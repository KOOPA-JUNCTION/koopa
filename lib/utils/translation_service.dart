import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../generated/locales.g.dart';

class TranslationService extends Translations {
  static Locale? get locale => Get.deviceLocale;
  static const fallbackLocale = Locale('en', 'US');

  @override
  Map<String, Map<String, String>> get keys => {
        'ko_KR': Locales.ko_KR,
        'en_US': Locales.en_US,
      };
}
