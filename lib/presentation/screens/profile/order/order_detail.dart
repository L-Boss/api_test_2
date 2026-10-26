import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/controllers/orderdetaail_controller.dart';
import 'package:api_test2/model/ordermodel/ordermodel.dart';
import 'package:api_test2/presentation/ScreenSize/screensize.dart';
import 'package:api_test2/presentation/components/Margin/margin.dart';
import 'package:api_test2/presentation/components/headers/headers.dart';
import 'package:api_test2/presentation/widgets/navbar/navbar.dart';
import 'package:api_test2/presentation/widgets/order_widget/order_detail_widget.dart';
import 'package:api_test2/presentation/widgets/order_widget/order_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderDetail extends StatelessWidget {
  OrderDetail({super.key});
  final controller = Get.put(OrderdetaailController());
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
          padding: EdgeInsets.only(left: 14.0, right: 14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Order No: ",
                            style: textStyle(
                              AppColor.black,
                              16.0,
                              FontWeight.w600,
                            ),
                          ),
                          Text(
                            orderdetails[0]['ordernumber'].toString(),
                            style: textStyle(
                              AppColor.black,
                              16.0,
                              FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      YMargin(0.01),
                      Row(
                        children: [
                          Text(
                            "Tracking Number: ",
                            style: textStyle(
                              AppColor.gray,
                              14.0,
                              FontWeight.normal,
                            ),
                          ),

                          Text(
                            orderdetails[2]['tracking number']
                                .toString()
                                .substring(11, 26),
                            style: textStyle(
                              AppColor.black,
                              14.0,
                              FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  XMargin(0.15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        orderdetails[1]['date'].toString().substring(0, 10),
                        style: textStyle(AppColor.black, 16.0, FontWeight.w600),
                      ),
                      YMargin(0.01),
                      Text(
                        orderdetails[5]['status'],
                        style: textStyle(
                          AppColor.success,
                          14.0,
                          FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              YMargin(0.01),

              Text(
                "${orderdetails.length.toString()} items",
                style: textStyle(AppColor.black, 18.0, FontWeight.w500),
              ),
              YMargin(0.01),

              ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  height: screensize.height * 0.01,
                  color: AppColor.background,
                ),
                itemCount: controller.orderdetail_detail.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => OrderDetailWidget(
                  Imagepath: controller.orderdetail_detail[index]['Imagepath'],
                  productcolor:
                      controller.orderdetail_detail[index]['productcolor'],
                  productdetail:
                      controller.orderdetail_detail[index]['productdetail'],
                  productname:
                      controller.orderdetail_detail[index]['productname'],
                  productprice:
                      controller.orderdetail_detail[index]['productprice'],
                  productsize:
                      controller.orderdetail_detail[index]['productsize'],
                  productunit:
                      controller.orderdetail_detail[index]['productunit'],
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
