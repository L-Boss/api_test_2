import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:api_test2/data/controllers/shopcontroller.dart';
import 'package:api_test2/presentation/ScreenSize/screensize.dart';
import 'package:api_test2/presentation/components/Margin/margin.dart';
import 'package:api_test2/presentation/components/buttons/buttons.dart';
import 'package:api_test2/presentation/components/headers/headers.dart';
import 'package:api_test2/presentation/widgets/navbar/navbar.dart';
import 'package:api_test2/presentation/widgets/shop_widget/shop_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ShopList extends StatelessWidget {
  ShopList({super.key});
  final controller = Get.put(ShopController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppHeader(
        title: "Categories",
        leadingIcon: Icons.arrow_back_ios_rounded,
        onLeadingTap: () => Get.back(),
        suffixIcon: Icons.search_outlined,
        onSuffixTap: () {},
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: AppButton(label: "VIEW ALL ITMES", onTap: () {}),
            ),
            YMargin(0.03),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Text(
                "Choose category",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColor.gray,
                  fontFamily: AppFont.metropolis,
                  fontWeight: FontWeight.w500,
                  fontSize: 20.w,
                ),
              ),
            ),

            YMargin(0.03),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => ShopListCard(
                label: controller.categorieslist[index],
                onTap: () {},
              ),
              separatorBuilder: (context, index) =>
                  SizedBox(height: screensize.height * 0.005),
              itemCount: controller.categorieslist.length,
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(index: 1),
    );
  }
}
