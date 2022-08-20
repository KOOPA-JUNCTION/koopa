import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

class ImageDetailController extends GetxController {
  final _file = Get.arguments['file'] as PlatformFile;
  late final fileBytes = _file.bytes!;
}
