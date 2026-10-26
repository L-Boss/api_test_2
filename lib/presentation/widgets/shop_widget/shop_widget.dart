// ignore_for_file: must_be_immutable

import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:api_test2/presentation/ScreenSize/screensize.dart';
import 'package:api_test2/presentation/components/Margin/margin.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShopCard extends StatelessWidget {
  String label;
  String imagepath;
  VoidCallback onTap;
  ShopCard({
    super.key,
    required this.label,
    required this.imagepath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0, right: 14.0),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: screensize.width,
          height: screensize.height * 0.15,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.w),
              color: AppColor.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Text(
                    label,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColor.black,
                      fontFamily: AppFont.metropolis,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.w,
                    ),
                  ),
                ),
                XMargin(0.1),
                Container(
                  height: screensize.height * 0.15,
                  width: screensize.width * 0.455,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),

                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    child: Image.asset(imagepath, fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShopListCard extends StatelessWidget {
  String label;
  VoidCallback onTap;
  ShopListCard({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: screensize.width,
        height: screensize.height * 0.07,
        child: Container(
          color: AppColor.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Text(
                label,
                style: TextStyle(
                  color: AppColor.black,
                  fontFamily: AppFont.metropolis,
                  fontWeight: FontWeight.w400,
                  fontSize: 18.w,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
