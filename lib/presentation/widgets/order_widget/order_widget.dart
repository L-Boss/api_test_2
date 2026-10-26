// ignore_for_file: must_be_immutable

import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:api_test2/presentation/ScreenSize/screensize.dart';
import 'package:api_test2/presentation/components/Margin/margin.dart';
import 'package:api_test2/presentation/components/buttons/buttons.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  int ordernumner;
  DateTime? date;
  DateTime? trackingnumber;
  int quantity;
  dynamic totalamount;
  String status;
  final VoidCallback onTap;

  OrderCard({
    super.key,
    required this.onTap,
    required this.date,
    required this.ordernumner,
    required this.quantity,
    required this.status,
    required this.totalamount,
    required this.trackingnumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14.0, right: 14.0),
      width: screensize.width * 0.85,
      height: screensize.height * 0.18,

      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: const Offset(0, 1),
            blurRadius: 2,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Order No: ",
                      style: textStyle(AppColor.black, 16.0, FontWeight.w600),
                    ),

                    Text(
                      ordernumner.toString(),
                      style: textStyle(AppColor.black, 16.0, FontWeight.w600),
                    ),
                  ],
                ),
                XMargin(0.31),
                Text(
                  date.toString().substring(0, 10),
                  style: textStyle(AppColor.gray, 14.0, FontWeight.normal),
                ),
              ],
            ),
          ),
          YMargin(0.01),
          Row(
            children: [
              Text(
                "Tracking Number: ",
                style: textStyle(AppColor.gray, 14.0, FontWeight.normal),
              ),

              Text(
                trackingnumber.toString(),
                style: textStyle(AppColor.black, 14.0, FontWeight.normal),
              ),
            ],
          ),
          YMargin(0.005),

          Row(
            children: [
              Row(
                children: [
                  Text(
                    "Quantity: ",
                    style: textStyle(AppColor.gray, 14.0, FontWeight.normal),
                  ),

                  Text(
                    quantity.toString(),
                    style: textStyle(AppColor.black, 14.0, FontWeight.w600),
                  ),
                ],
              ),
              XMargin(0.31),
              Expanded(
                child: Row(
                  children: [
                    Text(
                      "Total Amount: ",
                      style: textStyle(AppColor.gray, 14.0, FontWeight.normal),
                    ),

                    Text(
                      totalamount.toString(),
                      style: textStyle(AppColor.black, 14.0, FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppButton3(label: "Details", onTap: onTap),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    status,
                    style: textStyle(AppColor.success, 14.0, FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

TextStyle textStyle(Color color, double fontsize, FontWeight fontweight) {
  return TextStyle(
    fontFamily: AppFont.metropolis,
    color: color,
    fontSize: fontsize,
    fontWeight: fontweight,
  );
}
