// ignore_for_file: must_be_immutable

import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/presentation/widgets/order_widget/order_widget.dart';
import 'package:flutter/material.dart';

class AppToggle extends StatelessWidget {
  String label;

  AppToggle({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          textAlign: TextAlign.left,
          style: textStyle(AppColor.black, 14.0, FontWeight.w500),
        ),
      ],
    );
  }
}
