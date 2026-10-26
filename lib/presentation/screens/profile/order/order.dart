import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:api_test2/model/ordermodel/ordermodel.dart';
import 'package:api_test2/presentation/ScreenSize/screensize.dart';
import 'package:api_test2/presentation/components/Margin/margin.dart';
import 'package:api_test2/presentation/components/headers/headers.dart';
import 'package:api_test2/presentation/widgets/navbar/navbar.dart';
import 'package:api_test2/presentation/widgets/order_widget/order_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppHeader(
        title: "",
        leadingIcon: Icons.arrow_back_ios_rounded,
        onLeadingTap: () => Get.back(),
        suffixIcon: Icons.search_outlined,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "My Orders",
                style: const TextStyle(
                  fontFamily: AppFont.metropolis,
                  color: AppColor.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 34.0,
                ),
              ),
              YMargin(0.02),

              YMargin(0.05),
              ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  height: screensize.height * 0.03,
                  color: AppColor.background,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: orderdetails.length,
                itemBuilder: (context, index) => OrderCard(
                  onTap: () => Get.toNamed(orderdetails[index]['route']),
                  date: orderdetails[index]['date'],
                  ordernumner: orderdetails[index]['ordernumber'],
                  quantity: orderdetails[index]['quantity'],
                  status: orderdetails[index]['status'],
                  totalamount: orderdetails[index]['totalamount'],
                  trackingnumber: orderdetails[index]['trackingnumber'],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBar(index: 4),
    );
  }
}
