import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:koopa/app/components/platform_file_image_viewer.dart';

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
            PlatformFileImageViewer(file: controller.file),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: controller.goToGenerateNFT,
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
