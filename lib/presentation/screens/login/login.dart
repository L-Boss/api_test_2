import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:api_test2/data/constants/string.dart';
import 'package:api_test2/presentation/components/Formfield/formfield.dart';
import 'package:api_test2/presentation/components/Margin/margin.dart';
import 'package:api_test2/presentation/components/auth_icons/auth_icons.dart';
import 'package:api_test2/presentation/components/buttons/buttons.dart';
import 'package:api_test2/presentation/components/headers/headers.dart';
import 'package:api_test2/presentation/routes/routes/routes.dart';
import 'package:api_test2/presentation/screens/forgetpassword/forgetpassword.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppHeader(
        title: "",
        leadingIcon: Icons.arrow_back_ios_rounded,
        onLeadingTap: Get.back,
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
                  AppStrings.login,
                  style: TextStyle(
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
                    Get.to(Forgetpassword());
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      Text(
                        AppStrings.forgotpassword1,
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
                  label: AppStrings.login,
                  onTap: () {
                    Get.offNamedUntil(Routes.VISUALSEARCH, (route) => false);
                  },
                ),
              ),

              const YMargin(0.1),
              const AuthIcons(signuporlogin: AppStrings.orlogin),
            ],
          ),
        ),
      ),
    );
  }
}
