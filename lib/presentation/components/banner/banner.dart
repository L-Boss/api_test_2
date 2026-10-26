// ignore_for_file: must_be_immutable

import 'package:api_test2/data/constants/asset_paths.dart';
import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:api_test2/presentation/ScreenSize/screensize.dart';
import 'package:api_test2/presentation/components/buttons/buttons.dart';
import 'package:api_test2/presentation/screens/newcollections/newcollections.dart';
import 'package:api_test2/presentation/screens/streetclothes/streetclothes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';

class BigBanner extends StatelessWidget {
  String imagepath;
  String title;
  Alignment alignment;

  BigBanner({
    super.key,
    required this.imagepath,
    required this.title,
    required this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          width: screensize.width,
          height: screensize.height * 0.65,
          child: Image.asset(AppAssetPaths.bigbanner, fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 340.0, left: 14),
          child: Align(
            alignment: alignment,
            child: Text(
              title,
              style: const TextStyle(
                fontFamily: AppFont.metropolis,
                color: AppColor.white,
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 460.0, left: 14.0),
          child: AppBannerButton(
            label: "Check",
            onTap: () {
              Get.to(Streetclothes());
            },
          ),
        ),
      ],
    );
  }
}

class BigBanner2 extends StatelessWidget {
  String imagepath;
  String title;

  BigBanner2({super.key, required this.imagepath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          width: screensize.width,
          height: screensize.height * 0.65,
          child: Image.asset(AppAssetPaths.bigbanner2, fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 450.0, left: 68.0),
          child: Align(
            child: Text(
              title,
              style: const TextStyle(
                fontFamily: AppFont.metropolis,
                color: AppColor.white,
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SmallBanner extends StatelessWidget {
  String imagepath;
  String title;

  SmallBanner({super.key, required this.imagepath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          width: screensize.width,
          height: screensize.height * 0.3,
          child: Image.asset(AppAssetPaths.smallbanner, fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 130.0, left: 14.0),
          child: Text(
            title,
            style: const TextStyle(
              fontFamily: AppFont.metropolis,
              color: AppColor.white,
              fontSize: 48.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 180.0, left: 14.0),
          child: AppBannerButton(
            label: "Collection",
            onTap: () {
              Get.to(NewCollections());
            },
          ),
        ),
      ],
    );
  }
}
