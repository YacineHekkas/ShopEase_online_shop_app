import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shopease_ecom_app/controller/cart_controller.dart';
import 'package:shopease_ecom_app/controller/favorite_controller.dart';
import 'package:shopease_ecom_app/view/screens/splash_screen.dart';

import 'data/const/constants.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(FavoriteController());
  Get.put(CartController());
  SystemChrome.setSystemUIOverlayStyle(defaultOverlay);
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: GetMaterialApp(
            title: 'EaseShop',
            debugShowCheckedModeBanner: false,
            scrollBehavior: const ScrollBehavior().copyWith(overscroll: false),
            defaultTransition: Transition.fadeIn,
            theme: AppTheme.lightTheme,
            locale: const Locale('en_US'),
            // initialBinding: HomeBinding(),
            home: const SplashView(),
          ),
        );
      },
    );
  }
}
