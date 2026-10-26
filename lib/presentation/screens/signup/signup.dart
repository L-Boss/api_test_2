import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:api_test2/data/constants/string.dart';
import 'package:api_test2/presentation/components/Formfield/formfield.dart';
import 'package:api_test2/presentation/components/Margin/margin.dart';
import 'package:api_test2/presentation/components/auth_icons/auth_icons.dart';
import 'package:api_test2/presentation/components/buttons/buttons.dart';
import 'package:api_test2/presentation/components/headers/headers.dart';
import 'package:api_test2/presentation/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppHeader(
        title: "",
        leadingIcon: Icons.arrow_back_ios_rounded,
        onLeadingTap: () => SystemNavigator.pop(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              YMargin(0.02),

              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Text(
                  AppStrings.signup,
                  style: const TextStyle(
                    fontFamily: AppFont.metropolis,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const YMargin(0.065),

              Align(
                alignment: AlignmentGeometry.center,
                child: UserFormFields(
                  labelText: AppStrings.name,
                  lableColor: AppColor.gray,
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

              const YMargin(0.02),

              Align(
                alignment: AlignmentGeometry.center,
                child: UserFormFields(
                  labelText: AppStrings.password,
                  lableColor: AppColor.gray,
                ),
              ),
              const YMargin(0.02),

              Padding(
                padding: const EdgeInsets.only(right: 14.0),
                child: GestureDetector(
                  onTap: () {
                    Get.to(Login());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      Text(
                        AppStrings.haveanaccount,
                        style: TextStyle(
                          fontFamily: AppFont.metropolis,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      XMargin(0.005),
                      Icon(
                        Icons.arrow_forward_rounded,
                        size: 18.0,
                        color: AppColor.primary,
                      ),
                    ],
                  ),
                ),
              ),
              const YMargin(0.04),
              Align(
                alignment: AlignmentGeometry.center,
                child: AppButton(
                  label: AppStrings.signup,
                  onTap: () {
                    Get.off(Login());
                  },
                ),
              ),

              const YMargin(0.1),
              AuthIcons(signuporlogin: AppStrings.orsignup),
            ],
          ),
        ),
      ),
    );
  }
}
