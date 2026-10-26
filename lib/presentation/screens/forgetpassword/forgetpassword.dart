import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:api_test2/data/constants/string.dart';
import 'package:api_test2/presentation/components/Formfield/formfield.dart';
import 'package:api_test2/presentation/components/Margin/margin.dart';
import 'package:api_test2/presentation/components/buttons/buttons.dart';
import 'package:api_test2/presentation/components/headers/headers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppHeader(
        title: "",
        leadingIcon: Icons.arrow_back_ios_rounded,
        onLeadingTap: () => Get.back(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              YMargin(0.02),

              Padding(
                padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                child: Text(
                  AppStrings.forgotpassword2,
                  style: TextStyle(
                    fontFamily: AppFont.metropolis,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const YMargin(0.065),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: Text(
                  AppStrings.forgetpasswordinstruction,
                  style: TextStyle(
                    color: AppColor.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFont.metropolis,
                  ),
                ),
              ),
              const YMargin(0.02),
              Align(
                alignment: AlignmentGeometry.center,
                child: UserFormFields(
                  labelText: AppStrings.email,
                  lableColor: AppColor.gray,
                ),
              ),

              const YMargin(0.04),
              Align(
                alignment: AlignmentGeometry.center,
                child: AppButton(
                  label: AppStrings.send.toUpperCase(),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
