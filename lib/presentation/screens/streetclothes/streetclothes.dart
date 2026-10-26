import 'package:api_test2/data/constants/asset_paths.dart';
import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/string.dart';
import 'package:api_test2/presentation/components/Margin/margin.dart';
import 'package:api_test2/presentation/components/banner/banner.dart';
import 'package:api_test2/presentation/components/cards/productcards.dart';
import 'package:api_test2/presentation/widgets/navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class Streetclothes extends StatelessWidget {
  const Streetclothes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SmallBanner(
                  imagepath: AppAssetPaths.smallbanner,
                  title: "Street Clothes",
                ),
                YMargin(0.02),
                AppCard(
                  description: AppStrings.categorydesritipon,
                  sectiontitle: AppStrings.salescategory,
                  viewall: AppStrings.viewall,
                ),

                Transform.translate(
                  offset: Offset(0, -10),
                  child: AppCard(
                    description: AppStrings.categorydesritipon,
                    sectiontitle: AppStrings.newcategory,
                    viewall: AppStrings.viewall,
                  ),
                ),

                Transform.translate(
                  offset: Offset(0, -30),
                  child: AppCard(
                    description: AppStrings.categorydesritipon,
                    sectiontitle: AppStrings.salescategory,
                    viewall: AppStrings.viewall,
                  ),
                ),

                Transform.translate(
                  offset: Offset(0, -30),
                  child: AppCard(
                    description: AppStrings.categorydesritipon,
                    sectiontitle: AppStrings.newcategory,
                    viewall: AppStrings.viewall,
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 14.0),
              child: GestureDetector(
                onTap: Get.back,
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColor.primary,
                  size: 32.0,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(index: 0),
    );
  }
}
