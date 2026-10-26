// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:api_test2/data/controllers/bottomnavcontroller.dart';
import 'package:api_test2/presentation/ScreenSize/screensize.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

Text NavText(String label) {
  return Text(
    label,
    textAlign: TextAlign.center,
    style: const TextStyle(
      fontFamily: AppFont.metropolis,
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
    ),
  );
}

class NavBar extends StatelessWidget {
  int index;
  NavBar({super.key, required this.index});
  final BottomNAvigationController controller =
      Get.find<BottomNAvigationController>();
  List<BottomBarItem> items = [
    BottomBarItem(
      borderColor: AppColor.gray,
      selectedColor: AppColor.primary,
      unSelectedColor: AppColor.gray,
      icon: Icon(Icons.home_outlined, size: 32.0),
      title: NavText("Home"),
    ),

    BottomBarItem(
      borderColor: AppColor.gray,
      selectedColor: AppColor.primary,
      unSelectedColor: AppColor.gray,
      icon: Icon(Icons.shopping_cart_outlined, size: 32.0),
      title: NavText("Shop"),
    ),

    BottomBarItem(
      borderColor: AppColor.gray,
      selectedColor: AppColor.primary,
      unSelectedColor: AppColor.gray,
      icon: Icon(Icons.shopping_bag_outlined, size: 32.0),
      title: NavText("Bag"),
    ),

    BottomBarItem(
      borderColor: AppColor.gray,
      selectedColor: AppColor.primary,
      unSelectedColor: AppColor.gray,
      icon: Icon(Icons.favorite_border_outlined, size: 32.0, weight: 0.7),
      title: NavText("Favorites"),
    ),

    BottomBarItem(
      borderColor: AppColor.gray,
      selectedColor: AppColor.primary,
      unSelectedColor: AppColor.gray,
      icon: Icon(Icons.person_outline, size: 32.0),
      title: NavText("Profile"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screensize.width,
      height: screensize.height * 0.1,
      child: Obx(
        () => StylishBottomBar(
          iconSpace: 10.0,
          items: items,
          backgroundColor: AppColor.white,
          currentIndex: controller.currentIndex.value,
          onTap: (index) => controller.changePageIndex(index),
          option: BubbleBarOptions(
            inkEffect: false,
            inkColor: AppColor.gray,
            opacity: 0.9,
            barStyle: BubbleBarStyle.vertical,
            bubbleFillStyle: BubbleFillStyle.fill,
            iconSize: 32,
          ),
        ),
      ),
    );
  }
}
