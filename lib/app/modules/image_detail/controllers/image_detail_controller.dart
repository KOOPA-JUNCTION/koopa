import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class ImageDetailController extends GetxController {
  final file = Get.arguments['file'] as PlatformFile;

  void goToGenerateNFT() {
    Get.toNamed(Routes.GENERATE_NFT, arguments: {'file': file});
  }
}
