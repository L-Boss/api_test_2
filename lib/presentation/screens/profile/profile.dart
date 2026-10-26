import 'package:api_test2/data/constants/asset_paths.dart';
import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:api_test2/model/profile/profilemodel.dart';
import 'package:api_test2/presentation/ScreenSize/screensize.dart';
import 'package:api_test2/presentation/components/Margin/margin.dart';
import 'package:api_test2/presentation/components/headers/headers.dart';
import 'package:api_test2/presentation/widgets/navbar/navbar.dart';
import 'package:api_test2/presentation/widgets/profile_widget/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppHeader(
        title: "",
        onLeadingTap: () {},
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
                "My profile",
                style: const TextStyle(
                  fontFamily: AppFont.metropolis,
                  color: AppColor.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 34.0,
                ),
              ),
              YMargin(0.02),
              Row(
                children: [
                  CircleAvatar(
                    radius: 32.0,
                    foregroundImage: AssetImage(AppAssetPaths.profile),
                  ),
                  XMargin(0.01),

                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Matilda Brown",
                          style: const TextStyle(
                            fontFamily: AppFont.metropolis,
                            color: AppColor.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          "matildabrown@mail.com",
                          style: const TextStyle(
                            fontFamily: AppFont.metropolis,
                            color: AppColor.gray,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              YMargin(0.05),
              ListView.separated(
                separatorBuilder: (context, index) =>
                    SizedBox(height: screensize.height * 0.03),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: items.length,
                itemBuilder: (context, index) => ProfileOptions(
                  onTap: () => Get.toNamed(items[index]['route']),
                  content: items[index]['content'],
                  label: items[index]['label'],
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
