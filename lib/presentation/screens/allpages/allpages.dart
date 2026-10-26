// ignore_for_file: must_be_immutable

import 'package:api_test2/data/controllers/bottomnavcontroller.dart';
import 'package:api_test2/presentation/screens/bag/bag.dart';
import 'package:api_test2/presentation/screens/favotite/favorite.dart';
import 'package:api_test2/presentation/screens/home/home.dart';
import 'package:api_test2/presentation/screens/profile/profile.dart';
import 'package:api_test2/presentation/screens/shop/shop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllPages extends StatelessWidget {
  AllPages({super.key});

  final controller = Get.put(BottomNAvigationController());

  List<Widget> pages = [Home(), Shop(), Bag(), Favorites(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () =>
            IndexedStack(index: controller.currentIndex.value, children: pages),
      ),
    );
  }
}
