import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class PlatformFileImageViewer extends StatelessWidget {
  final PlatformFile file;
  const PlatformFileImageViewer({super.key, required this.file});

  @override
  Widget build(BuildContext context) {
    if (GetPlatform.isWeb) return Image.memory(file.bytes!);
    if (GetPlatform.isMobile) return Image.file(File(file.path!));
    return Container();
  }
}
