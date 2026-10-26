// ignore_for_file: must_be_immutable

import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/presentation/ScreenSize/screensize.dart';
import 'package:api_test2/presentation/components/Margin/margin.dart';
import 'package:api_test2/presentation/widgets/order_widget/order_widget.dart';
import 'package:flutter/material.dart';

class OrderDetailWidget extends StatelessWidget {
  String Imagepath;
  String productname;
  String productdetail;
  String productcolor;
  String productsize;
  dynamic productunit;
  dynamic productprice;
  OrderDetailWidget({
    super.key,
    required this.Imagepath,
    required this.productcolor,
    required this.productdetail,
    required this.productname,
    required this.productprice,
    required this.productsize,
    required this.productunit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 14.0),
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: const Offset(0, 1),
            blurRadius: 2,
            spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      width: screensize.width * 0.85,
      height: screensize.height * 0.18,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: screensize.height * 0.18,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
            width: screensize.width * 0.4,
            child: Image.asset(Imagepath, fit: BoxFit.cover),
          ),
          XMargin(0.05),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  productname,
                  style: textStyle(AppColor.black, 20.0, FontWeight.w600),
                ),
                YMargin(0.001),

                Text(
                  productdetail,
                  style: textStyle(AppColor.gray, 13.0, FontWeight.normal),
                ),
                YMargin(0.011),

                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Color: ",
                          style: textStyle(
                            AppColor.gray,
                            13.0,
                            FontWeight.normal,
                          ),
                        ),
                        Text(
                          productcolor,
                          style: textStyle(
                            AppColor.black,
                            13.0,
                            FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    XMargin(0.04),
                    Row(
                      children: [
                        Text(
                          "Size: ",
                          style: textStyle(
                            AppColor.gray,
                            13.0,
                            FontWeight.normal,
                          ),
                        ),
                        Text(
                          productsize,
                          style: textStyle(
                            AppColor.black,
                            13.0,
                            FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                YMargin(0.005),

                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Units",
                          style: textStyle(
                            AppColor.gray,
                            13.0,
                            FontWeight.normal,
                          ),
                        ),
                        Text(
                          productunit.toString(),
                          style: textStyle(
                            AppColor.black,
                            13.0,
                            FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    XMargin(0.19),
                    Text(
                      "\$${productprice.toString()}",
                      textAlign: TextAlign.left,
                      style: textStyle(AppColor.black, 18.0, FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
