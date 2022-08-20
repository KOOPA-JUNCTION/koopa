import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../generated/locales.g.dart';
import '../controllers/image_detail_controller.dart';

class ImageDetailView extends GetView<ImageDetailController> {
  const ImageDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.imageDetail_title.tr),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.memory(controller.fileBytes),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(LocaleKeys.imageDetail_create.tr),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
