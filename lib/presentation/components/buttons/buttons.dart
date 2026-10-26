import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:api_test2/presentation/ScreenSize/screensize.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const AppButton({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screensize.width * 0.90,
      height: screensize.height * 0.07,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primary,
          shadowColor: AppColor.primary,
        ),

        onPressed: onTap,
        child: Center(
          child: Text(
            label.toUpperCase(),
            style: TextStyle(
              color: AppColor.white,
              fontFamily: AppFont.metropolis,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class AppButton2 extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const AppButton2({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screensize.width * 0.90,
      height: screensize.height * 0.07,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.transparaent,
          shadowColor: AppColor.transparaent,
          side: const BorderSide(color: AppColor.white),
          elevation: 0.0,
        ),

        onPressed: onTap,
        child: Center(
          child: Text(
            label.toUpperCase(),
            style: TextStyle(
              color: AppColor.white,
              fontFamily: AppFont.metropolis,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class AppButton3 extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const AppButton3({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screensize.width * 0.30,
      height: screensize.height * 0.04,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.transparaent,
          shadowColor: AppColor.transparaent,
          side: const BorderSide(color: AppColor.black),
          elevation: 0.0,
        ),

        onPressed: onTap,
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: AppColor.black,
              fontFamily: AppFont.metropolis,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class AppBannerButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const AppBannerButton({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screensize.width * 0.4,
      height: screensize.height * 0.05,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primary,
          shadowColor: AppColor.primary,
        ),

        onPressed: onTap,
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: AppColor.white,
              fontFamily: AppFont.metropolis,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
