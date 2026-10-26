import 'package:api_test2/data/constants/string.dart';
import 'package:api_test2/presentation/ScreenSize/screensize.dart';
import 'package:api_test2/presentation/components/headers/headers.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class Byphoto extends StatelessWidget {
  const Byphoto({super.key});

  @override
  // XFile? imageShot;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(
        leadingIcon: Icons.arrow_back_ios_rounded,
        onLeadingTap: () => Get.back(),
        title: AppStrings.byphoto,
      ),

      body: SizedBox(
        height: screensize.height,
        width: screensize.width,
        child: Stack(children: <Widget>[SizedBox()]),
      ),
    );
  }
}
