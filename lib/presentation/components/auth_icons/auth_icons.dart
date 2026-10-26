import 'package:api_test2/data/constants/asset_paths.dart';
import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:api_test2/presentation/ScreenSize/screensize.dart';
import 'package:api_test2/presentation/components/Margin/margin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthIcons extends StatelessWidget {
  final String signuporlogin;
  const AuthIcons({super.key, required this.signuporlogin});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          signuporlogin,
          style: TextStyle(
            fontFamily: AppFont.metropolis,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        YMargin(0.015),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.w),
                color: AppColor.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    offset: const Offset(0, 1),
                    blurRadius: 2,
                    spreadRadius: 0,
                  ),
                ],
              ),
              width: screensize.width * 0.25,
              height: screensize.height * 0.08,
              child: Center(
                child: SvgPicture.asset(
                  AppAssetPaths.google,
                  width: screensize.width * 0.03,
                  height: screensize.height * 0.03,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            XMargin(0.05),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.w),
                color: AppColor.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    offset: const Offset(0, 1),
                    blurRadius: 2,
                    spreadRadius: 0,
                  ),
                ],
              ),
              width: screensize.width * 0.25,
              height: screensize.height * 0.08,
              child: Center(
                child: SvgPicture.asset(
                  AppAssetPaths.facebook,
                  width: screensize.width * 0.03,
                  height: screensize.height * 0.03,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
