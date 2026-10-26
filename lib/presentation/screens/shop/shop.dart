// ignore_for_file: override_on_non_overriding_member, must_be_immutable
import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:api_test2/data/controllers/shopcontroller.dart';
import 'package:api_test2/presentation/ScreenSize/screensize.dart';
import 'package:api_test2/presentation/components/Margin/margin.dart';
import 'package:api_test2/presentation/components/headers/headers.dart';
import 'package:api_test2/presentation/screens/home/home.dart';
import 'package:api_test2/presentation/screens/shop/shop_list.dart';
import 'package:api_test2/presentation/widgets/navbar/navbar.dart';
import 'package:api_test2/presentation/widgets/shop_widget/shop_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Shop extends StatelessWidget {
  Shop({super.key});

  final controller = Get.put(ShopController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppHeader(
        title: "Categories",
        leadingIcon: Icons.arrow_back_ios_rounded,
        onLeadingTap: () => Get.off(Home()),
        suffixIcon: Icons.search_outlined,
        onSuffixTap: () {},
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Get.to(ShopList()),
              child: Container(
                width: screensize.width * 0.93,
                height: screensize.height * 0.18,

                decoration: BoxDecoration(
                  color: AppColor.hotsales,
                  borderRadius: BorderRadius.circular(8.w),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "SUMMER SALES",
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 32.w,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.metropolis,
                      ),
                    ),
                    Text(
                      "Up to 50% off",
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 24.w,
                        fontWeight: FontWeight.w400,
                        fontFamily: AppFont.metropolis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            YMargin(0.01),

            ListView.builder(
              shrinkWrap: true,

              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.categories.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: ShopCard(
                  onTap: () {},
                  label: controller.categories[index]['label'],
                  imagepath: controller.categories[index]['imagepath'],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(index: 1),
    );
  }
}
