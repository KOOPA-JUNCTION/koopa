import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../generated/locales.g.dart';
import '../controllers/home_controller.dart';

class _Title extends StatelessWidget {
  final String title;
  const _Title({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 15,
          color: const Color(0xb31e299c),
        ),
        const SizedBox(width: 2),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.home_title.tr),
        titleTextStyle: Get.textTheme.titleLarge!.copyWith(
          fontWeight: FontWeight.w900,
          color: const Color(0xff1e299c),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            sliver: SliverToBoxAdapter(
              child: Column(children: [
                _Title(title: LocaleKeys.home_popular.tr),
              ]),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            sliver: SliverToBoxAdapter(
              child: Column(children: [
                _Title(title: LocaleKeys.home_popular.tr),
              ]),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            sliver: SliverToBoxAdapter(
              child: Column(children: [
                _Title(title: LocaleKeys.home_popular.tr),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
