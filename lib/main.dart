import 'package:api_test2/data/controllers/bottomnavcontroller.dart';
import 'package:api_test2/myapp.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(BottomNAvigationController());
  runApp(MyApp());
}
