import 'package:api_test2/data/constants/color.dart';
import 'package:api_test2/data/constants/font.dart';
import 'package:api_test2/data/controllers/bottomnavcontroller.dart';
import 'package:api_test2/presentation/routes/pages/pages.dart';
import 'package:api_test2/presentation/routes/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:get/state_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375.0, 812.0),
      splitScreenMode: true,
      minTextAdapt: true,
      child: GetMaterialApp(
        color: AppColor.background,
        defaultTransition: Transition.leftToRight,
        theme: ThemeData(useMaterial3: true, fontFamily: AppFont.metropolis),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.SPLASH,
        getPages: Pages.routes,
        themeMode: ThemeMode.system,
        initialBinding: BindingsBuilder(() {
          Get.put(BottomNAvigationController());
        }),
      ),
    );
  }
}
