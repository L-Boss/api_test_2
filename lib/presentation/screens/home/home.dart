import 'package:api_test2/data/constants/asset_paths.dart';
import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/string.dart';
import 'package:api_test2/presentation/components/Margin/margin.dart';
import 'package:api_test2/presentation/components/banner/banner.dart';
import 'package:api_test2/presentation/components/cards/productcards.dart';
import 'package:api_test2/presentation/widgets/navbar/navbar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
                BigBanner(
                  alignment: Alignment.bottomLeft,
                  imagepath: AppAssetPaths.bigbanner,
                  title: "Fashion\nsales",
                ),
                YMargin(0.02),
                AppCard(
                  description: AppStrings.categorydesritipon,
                  sectiontitle: AppStrings.newcategory,
                  viewall: AppStrings.viewall,
                ),

                Transform.translate(
                  offset: Offset(0, -30),
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
                    sectiontitle: AppStrings.newcategory,
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
          ],
        ),
      ),
      bottomNavigationBar: NavBar(index: 0),
    );
  }
}
