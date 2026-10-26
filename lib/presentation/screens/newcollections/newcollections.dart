import 'package:api_test2/data/constants/asset_paths.dart';
import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/presentation/components/Margin/margin.dart';
import 'package:api_test2/presentation/components/banner/banner.dart';
import 'package:api_test2/presentation/widgets/collection_widget/collection_widget.dart';
import 'package:api_test2/presentation/widgets/navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class NewCollections extends StatelessWidget {
  const NewCollections({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BigBanner2(
                  imagepath: AppAssetPaths.bigbanner2,
                  title: "New Collection",
                ),
                YMargin(0.02),
                Transform.translate(
                  offset: Offset(0, -20),
                  child: Collections(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 14.0),
              child: GestureDetector(
                onTap: Get.back,
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColor.white,
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
