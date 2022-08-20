import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../generated/locales.g.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.home_title.tr),
        titleTextStyle: Get.textTheme.titleMedium!.copyWith(
          fontWeight: FontWeight.w900,
          color: const Color(0xff1e299c),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
