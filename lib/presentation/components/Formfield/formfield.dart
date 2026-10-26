import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:api_test2/presentation/ScreenSize/screensize.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserFormFields extends StatelessWidget {
  final String labelText;
  final Color lableColor;
  const UserFormFields({
    super.key,
    required this.labelText,
    required this.lableColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.w),
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
      width: screensize.width * 0.90,
      height: screensize.height * 0.08,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 20.0),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            label: Text(
              labelText,
              style: TextStyle(
                fontFamily: AppFont.metropolis,
                color: lableColor,
                fontSize: 14.sp,
              ),
            ),
          ),
          cursorColor: AppColor.gray,
        ),
      ),
    );
  }
}
