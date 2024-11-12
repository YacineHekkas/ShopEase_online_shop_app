import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shopease_ecom_app/data/const/constants.dart';
import 'package:shopease_ecom_app/view/screens/landingPage/landing_page.dart';
import 'package:shopease_ecom_app/view/screens/widgets/buttons/custom_text_button.dart';
import 'package:shopease_ecom_app/view/screens/widgets/buttons/primary_button.dart';


class AgreeTermsDialog extends StatelessWidget {

  final storage = FlutterSecureStorage();


  final VoidCallback disagreeCallback;
  final VoidCallback agreeCallback;
   AgreeTermsDialog({
    required this.agreeCallback,
    required this.disagreeCallback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'I agree to the Terms of Service and Conditions of Use including consent to electronic communications and I affirm that the information provided is my own.',
            style: AppTypography.kMedium14.copyWith(color: AppColors.kGrey70),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppSpacing.thirtyVertical),
          Row(
            children: [
              Expanded(
                child: CustomTextButton(
                  onPressed: disagreeCallback,
                  text: 'Disagree',
                ),
              ),
              Expanded(
                child: PrimaryButton(
                  onTap: () async {
                    await storage.write(key: 'auth', value: "token");


                    Get.offAll<Widget>(
                          () => const LandingPage(),
                      transition: Transition.rightToLeft, // Choose your preferred transition
                      duration: const Duration(milliseconds: 500), // Customize duration if needed
                    );
                  },
                  text: 'Agree',
                  fontSize: 14.sp,
                  width: 115.w,
                  height: 46.h,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
