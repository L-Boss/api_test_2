// ignore_for_file: must_be_immutable

import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:flutter/material.dart';

class ProfileOptions extends StatelessWidget {
  String label;
  dynamic content;
  final VoidCallback onTap;
  ProfileOptions({
    super.key,
    required this.onTap,
    required this.content,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: AppColor.black,
                    fontFamily: AppFont.metropolis,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Text(
                  content,
                  style: const TextStyle(
                    fontSize: 11.0,
                    color: AppColor.gray,
                    fontFamily: AppFont.metropolis,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColor.gray,

                size: 12.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
