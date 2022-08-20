import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../routes/app_pages.dart';

class ImageDetailController extends GetxController {
  final file = Get.arguments['file'] as XFile;

  void goToGenerateNFT() {
    Get.toNamed(Routes.GENERATE_NFT, arguments: {'file': file});
  }
}
