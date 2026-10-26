import 'package:api_test2/data/constants/asset_paths.dart';
import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Collections extends StatelessWidget {
  Collections({super.key});
  List<Map<String, dynamic>> items = [
    {"title": "Men's hood", "image": AppAssetPaths.collection2},
    {"title": "Black", "image": AppAssetPaths.collection1},
    {"title": "Modern", "image": AppAssetPaths.photo2},
    {"title": "Sexy", "image": AppAssetPaths.photo4},
    {"title": "Gown", "image": AppAssetPaths.photo3},
    {"title": "Black", "image": AppAssetPaths.collection1},
    {"title": "Modern", "image": AppAssetPaths.photo2},
    {"title": "Sexy", "image": AppAssetPaths.photo4},
    {"title": "Men's hood", "image": AppAssetPaths.collection2},
    {"title": "Black", "image": AppAssetPaths.collection1},
    {"title": "Modern", "image": AppAssetPaths.photo2},
    {"title": "Sexy", "image": AppAssetPaths.photo4},
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.75,
      ),
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(items[index]["image"]),
            fit: BoxFit.cover,
          ),
        ),

        child: Align(
          alignment: AlignmentGeometry.center,
          child: Text(
            items[index]["title"],
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColor.white,
              fontFamily: AppFont.metropolis,
              fontSize: 34.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
