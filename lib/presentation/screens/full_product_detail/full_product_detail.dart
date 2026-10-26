import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:api_test2/data/controllers/productcontroller.dart';
import 'package:api_test2/presentation/ScreenSize/screensize.dart';
import 'package:api_test2/presentation/components/Margin/margin.dart';
import 'package:api_test2/presentation/components/headers/headers.dart';
import 'package:api_test2/presentation/widgets/navbar/navbar.dart';
import 'package:api_test2/presentation/widgets/order_widget/order_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullProductDetail extends StatelessWidget {
  FullProductDetail({super.key});
  final controller = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(
        title: controller.cardproperty[2]['productcategory'],
        leadingIcon: Icons.arrow_back_ios_rounded,
        onLeadingTap: () => Get.back(),
        suffixIcon: Icons.share,
        onSuffixTap: () {},
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              controller.cardproperty[4]['productimage'],
              fit: BoxFit.cover,
            ),

            Padding(
              padding: EdgeInsetsGeometry.only(
                top: 14.0,
                left: 14.0,
                right: 14.0,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: screensize.width * 0.12,
                        height: screensize.height * 0.053,
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(30.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              offset: const Offset(0, 1),
                              blurRadius: 2,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.favorite_outline,
                          color: AppColor.gray,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                  YMargin(0.005),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            controller.cardproperty[3]['productcategory'],
                            style: textStyle(
                              AppColor.black,
                              26.0,
                              FontWeight.w500,
                            ),
                          ),

                          Text(
                            controller.cardproperty[2]['productname'],
                            style: textStyle(
                              AppColor.gray,
                              12.0,
                              FontWeight.w400,
                            ),
                          ),
                          YMargin(0.01),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: AppColor.ratingcolor,
                                    size: 12.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: AppColor.ratingcolor,
                                    size: 12.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: AppColor.ratingcolor,
                                    size: 12.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: AppColor.ratingcolor,
                                    size: 12.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: AppColor.ratingcolor,
                                    size: 12.0,
                                  ),
                                ],
                              ),
                              Text(
                                "\(${controller.cardproperty[1]['ratingcount']})"
                                    .toString(),
                                style: const TextStyle(
                                  color: AppColor.gray,
                                  fontFamily: AppFont.metropolis,
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(index: 0),
    );
  }
}
