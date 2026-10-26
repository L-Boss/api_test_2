import 'package:api_test2/data/constants/asset_paths.dart';
import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/presentation/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      Get.off(Signup());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Center(
              child: Image.asset(AppAssetPaths.splashimage, fit: BoxFit.cover),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Align(
                alignment: AlignmentGeometry.bottomCenter,
                child: LoadingAnimationWidget.waveDots(
                  color: AppColor.gray,
                  size: 30.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
