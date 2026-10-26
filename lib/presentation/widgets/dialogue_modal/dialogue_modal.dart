// ignore_for_file: must_be_immutable

import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/presentation/ScreenSize/screensize.dart';
import 'package:api_test2/presentation/components/buttons/buttons.dart';

import 'package:flutter/material.dart';

class DialogueModal extends StatelessWidget {
  Widget child;
  String buttonlabel;
  final VoidCallback onTap;
  DialogueModal({
    super.key,
    required this.child,
    required this.buttonlabel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return dialoguemodal(context, child, buttonlabel, onTap);
  }
}

dynamic dialoguemodal(
  BuildContext context,
  Widget child,
  String label,
  VoidCallback onTap,
) {
  return showModalBottomSheet(
    sheetAnimationStyle: AnimationStyle(
      duration: Duration(seconds: 1),
      reverseDuration: Duration(seconds: 1),
    ),
    context: context,
    builder: (context) => Container(
      width: screensize.width,
      decoration: BoxDecoration(color: AppColor.background),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 14.0, left: 14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              child,
              AppButton(label: label.toUpperCase(), onTap: onTap),
            ],
          ),
        ),
      ),
    ),
  );
}
