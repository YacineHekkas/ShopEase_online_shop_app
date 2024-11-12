import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shopease_ecom_app/controller/auth_navigation.dart';
import 'package:shopease_ecom_app/data/const/constants.dart';



class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () async {

      await checkAuthStatus();
      // Get.offAll<Widget>(() => const OnboardingView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(

          color: Colors.white

          // color: AppColors.kPrimary

          // image: DecorationImage(
          //   image: AssetImage(AppAssets.kSplashBG),
          //   fit: BoxFit.cover,
          // ),
        ),
        child: Column(
          children: [
            const Spacer(),
            SvgPicture.asset(
              AppAssets.kShower,
              height: 180.h,
              width: 180.w,
            ),
            Text(
              'ShopEase',
              style: AppTypography.kExtraBold40.copyWith(
                color: Colors.black,
              ),
            ),
            SizedBox(height: AppSpacing.tenVertical),
            Text(
              'Your solution for better \n  shopping experience ',
              style: AppTypography.kMedium14.copyWith(
                color: Colors.black,
              ),
            ),
            const Spacer(),
            // const CircularProgressIndicator(
            //   valueColor: AlwaysStoppedAnimation<Color>(AppColors.kWhite),
            // ),
            SizedBox(height: 133.h),
          ],
        ),
      ),
    );
  }
}
