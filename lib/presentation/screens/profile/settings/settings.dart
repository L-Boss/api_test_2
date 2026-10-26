import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:api_test2/presentation/components/Formfield/formfield.dart';
import 'package:api_test2/presentation/components/Margin/margin.dart';
import 'package:api_test2/presentation/components/headers/headers.dart';
import 'package:api_test2/presentation/components/toggle/toggle.dart';
import 'package:api_test2/presentation/widgets/dialogue_modal/dialogue_modal.dart';
import 'package:api_test2/presentation/widgets/navbar/navbar.dart';
import 'package:api_test2/presentation/widgets/order_widget/order_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppHeader(
        title: "",
        leadingIcon: Icons.arrow_back_ios_new_outlined,
        onLeadingTap: () => Get.back(),
        suffixIcon: Icons.search_outlined,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsGeometry.only(right: 14.0, left: 14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Settings",
                style: const TextStyle(
                  fontFamily: AppFont.metropolis,
                  color: AppColor.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 34.0,
                ),
              ),
              YMargin(0.02),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Personal Information",
                    textAlign: TextAlign.left,
                    style: textStyle(AppColor.black, 16.0, FontWeight.w600),
                  ),
                  YMargin(0.03),
                  UserFormFields(
                    labelText: "Full name",
                    lableColor: AppColor.gray,
                  ),
                  YMargin(0.03),
                  UserFormFields(
                    labelText: "Date of Birth",
                    lableColor: AppColor.gray,
                  ),
                ],
              ),
              YMargin(0.05),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Password",
                        textAlign: TextAlign.left,
                        style: textStyle(AppColor.black, 16.0, FontWeight.w600),
                      ),
                      XMargin(0.03),
                      GestureDetector(
                        onTap: () => DialogueModal(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                radius: BorderRadius.circular(8),
                                color: AppColor.gray,
                                thickness: 2.0,
                                height: 15.0,
                              ),
                              YMargin(0.05),
                              Text(
                                "Password Change",
                                textAlign: TextAlign.center,
                                style: textStyle(
                                  AppColor.black,
                                  18.0,
                                  FontWeight.w500,
                                ),
                              ),
                              UserFormFields(
                                labelText: "Old Password",
                                lableColor: AppColor.gray,
                              ),
                              YMargin(0.015),
                              Text(
                                "Forgot Password?",
                                textAlign: TextAlign.right,
                                style: textStyle(
                                  AppColor.gray,
                                  14.0,
                                  FontWeight.w500,
                                ),
                              ),
                              YMargin(0.03),
                              UserFormFields(
                                labelText: "New Password",
                                lableColor: AppColor.gray,
                              ),
                              YMargin(0.03),
                              UserFormFields(
                                labelText: "Repeat New Password",
                                lableColor: AppColor.gray,
                              ),
                            ],
                          ),
                          buttonlabel: "Save Password",
                          onTap: () {},
                        ),
                        child: Padding(
                          padding: EdgeInsetsGeometry.only(right: 14.0),
                          child: Text(
                            "Change",
                            textAlign: TextAlign.left,
                            style: textStyle(
                              AppColor.gray,
                              14.0,
                              FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  YMargin(0.03),
                  UserFormFields(
                    labelText: "Password",
                    lableColor: AppColor.gray,
                  ),
                ],
              ),
              YMargin(0.05),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Notifications",
                    textAlign: TextAlign.left,
                    style: textStyle(AppColor.black, 16.0, FontWeight.w600),
                  ),
                  YMargin(0.03),
                  AppToggle(label: "Sales"),
                  YMargin(0.03),
                  AppToggle(label: "New arrivals"),
                  YMargin(0.03),
                  AppToggle(label: "Delivery status changes"),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBar(index: 4),
    );
  }
}
