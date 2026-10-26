import 'package:api_test2/data/constants/asset_paths.dart';
import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:api_test2/data/constants/string.dart';
import 'package:api_test2/presentation/ScreenSize/screensize.dart';
import 'package:api_test2/presentation/screens/allpages/allpages.dart';
import 'package:api_test2/presentation/components/Margin/margin.dart';
import 'package:api_test2/presentation/components/buttons/buttons.dart';
import 'package:api_test2/presentation/components/headers/headers.dart';
import 'package:api_test2/presentation/visualsearch/byphoto.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VisualSearch extends StatelessWidget {
  const VisualSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(
        leadingIcon: Icons.arrow_back_ios_rounded,
        onLeadingTap: () => Get.back(),
        title: AppStrings.visualsearch,
      ),

      body: SizedBox(
        height: screensize.height,
        width: screensize.width,
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Image.asset(AppAssetPaths.searchimage, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 190.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0, right: 22.0),
                    child: Text(
                      AppStrings.visualsearchtetxt,
                      style: TextStyle(
                        color: AppColor.white,
                        fontFamily: AppFont.metropolis,
                        fontWeight: FontWeight.w800,
                        fontSize: 26,
                      ),
                    ),
                  ),
                  YMargin(0.045),
                  Align(
                    alignment: AlignmentGeometry.center,
                    child: AppButton(
                      label: AppStrings.takeaphoto,
                      onTap: () {
                        Get.to(Byphoto());
                      },
                    ),
                  ),
                  YMargin(0.03),

                  Align(
                    alignment: AlignmentGeometry.center,
                    child: AppButton2(
                      label: AppStrings.uploadanimage,
                      onTap: () {},
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 210.0),
                    child: Align(
                      alignment: AlignmentGeometry.bottomCenter,
                      child: GestureDetector(
                        onTap: () => Get.to(AllPages()),
                        child: Text(
                          "Skip to home",
                          style: const TextStyle(
                            fontFamily: AppFont.metropolis,
                            color: AppColor.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
