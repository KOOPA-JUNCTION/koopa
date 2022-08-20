import 'dart:typed_data';

import 'package:get/get.dart';

class GenerateNftController extends GetxController {
  final fileBytes = Get.arguments['fileBytes'] as Uint8List;
}
