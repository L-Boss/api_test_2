// ignore_for_file: must_be_immutable

import 'package:api_test2/data/constants/asset_paths.dart';
import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:api_test2/data/controllers/productcontroller.dart';
import 'package:api_test2/presentation/ScreenSize/screensize.dart';
import 'package:api_test2/presentation/components/Margin/margin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppCard extends StatelessWidget {
  String sectiontitle;
  String description;
  String viewall;

  AppCard({
    super.key,
    required this.description,
    required this.sectiontitle,
    required this.viewall,
  });

  final controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screensize.width,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sectiontitle,
                      style: const TextStyle(
                        fontFamily: AppFont.metropolis,
                        color: AppColor.black,
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      description,
                      style: const TextStyle(
                        fontFamily: AppFont.metropolis,
                        color: AppColor.gray,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 14.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    viewall,
                    style: const TextStyle(
                      fontFamily: AppFont.metropolis,
                      color: AppColor.black,
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),

          YMargin(0.02),
          SizedBox(
            height: screensize.height * 0.32,
            child: Obx(() {
              return ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: controller.cardproperty.length,
                itemBuilder: (context, index) {
                  final product = controller.cardproperty[index];
                  return GestureDetector(
                    onTap: () =>
                        Get.toNamed(controller.cardproperty[index]['route']),
                    child: ProductCard(
                      discount: product['discount'] ?? '0%',
                      ratingcount: product['ratingcount'] ?? "0",
                      productname: product['productname'] ?? "Loading...",
                      productcategory: product["productcategory"] ?? "Unknown",
                      productimage:
                          product['productimage'] ?? AppAssetPaths.photo1,
                      previousprice: "\$${product['previousprice']}",
                      price: "\$${product['price']}",
                      color: AppColor.black,
                    ),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  dynamic productimage;
  String productname;
  String productcategory;
  dynamic price;
  dynamic discount;
  dynamic previousprice;
  int ratingcount;
  Color color;

  ProductCard({
    super.key,
    required this.discount,
    required this.price,
    required this.previousprice,
    required this.productcategory,
    required this.productimage,
    required this.productname,
    required this.ratingcount,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: <Widget>[
              SizedBox(
                width: screensize.width * 0.4,
                height: screensize.height * 0.2,
                child: Image.asset(productimage),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 14.0),
                child: Container(
                  width: screensize.width * 0.08,
                  height: screensize.height * 0.02,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Align(
                    alignment: AlignmentGeometry.center,
                    child: Text(
                      discount,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: AppColor.white,
                        fontFamily: AppFont.metropolis,
                        fontSize: 11.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 140.0, left: 92.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
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
                ),
              ),
            ],
          ),

          Transform.translate(
            offset: const Offset(0, -15),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Row(
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
                        "($ratingcount)",
                        style: const TextStyle(
                          color: AppColor.gray,
                          fontFamily: AppFont.metropolis,
                          fontSize: 11.0,
                        ),
                      ),
                    ],
                  ),

                  Text(
                    productname,
                    style: const TextStyle(
                      color: AppColor.gray,
                      fontFamily: AppFont.metropolis,
                      fontSize: 11.0,
                    ),
                  ),

                  Text(
                    productcategory,
                    style: const TextStyle(
                      color: AppColor.black,
                      fontFamily: AppFont.metropolis,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  Row(
                    children: [
                      Text(
                        previousprice.toString(),
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: AppColor.gray,
                          fontFamily: AppFont.metropolis,
                          fontSize: 14.0,
                        ),
                      ),
                      XMargin(0.015),
                      Text(
                        price.toString(),
                        style: const TextStyle(
                          color: AppColor.hotsales,
                          fontFamily: AppFont.metropolis,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
