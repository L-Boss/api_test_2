// ignore_for_file: unused_local_variable

import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class Imagepicker {
  Future slecetImage() async {
    final selectImage = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    return selectImage;
  }

  Future<Widget> takePhoto() async {
    final takeImage = await ImagePicker().pickImage(source: ImageSource.camera);
    return SizedBox();
  }
}

Imagepicker imagepicker = Imagepicker();
