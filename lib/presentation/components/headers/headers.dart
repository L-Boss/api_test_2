import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? leadingIcon;
  final IconData? suffixIcon;
  final VoidCallback? onLeadingTap;
  final VoidCallback? onSuffixTap;
  const AppHeader({
    super.key,
    required this.title,
    this.leadingIcon,
    this.suffixIcon,
    required this.onLeadingTap,
    this.onSuffixTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14.0),
      child: AppBar(
        foregroundColor: AppColor.background,

        title: Text(
          title,
          style: TextStyle(
            color: AppColor.black,
            fontFamily: AppFont.metropolis,
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColor.background,
        leading: GestureDetector(
          onTap: onLeadingTap,
          child: Icon(leadingIcon, color: AppColor.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: GestureDetector(
              onTap: onSuffixTap,
              child: Icon(suffixIcon, color: AppColor.black),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
