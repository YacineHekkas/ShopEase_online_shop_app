import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shopease_ecom_app/data/const/constants.dart';
import 'package:shopease_ecom_app/view/screens/my_purchase/my_purchase_view.dart';
import 'package:shopease_ecom_app/view/screens/widgets/buttons/custom_outlined_button.dart';
import 'package:shopease_ecom_app/view/screens/widgets/buttons/primary_button.dart';


class PaymentSuccessDialog extends StatelessWidget {
  const PaymentSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(AppAssets.kPaymentSuccess),
          Text('Payment Success', style: AppTypography.kSemiBold16),
          SizedBox(height: AppSpacing.fiveVertical),
          Text(
            'Your order will show in delivery status accordingly.',
            textAlign: TextAlign.center,
            style: AppTypography.kMedium14.copyWith(color: AppColors.kGrey60),
          ),
          SizedBox(height: AppSpacing.twentyVertical),
          Row(
            children: [
              Expanded(
                child: CustomOutlinedButton(
                  onTap: () {
                    Get.back<void>();
                  },
                  width: 115.0.w,
                  borderRadius: 30.0.r,
                  height: 46.0.h,
                  fontSize: 14.0.sp,
                  text: 'Back Home',
                  color: AppColors.kPrimary,
                ),
              ),
              Expanded(
                child: PrimaryButton(
                  onTap: () {
                    Get.to<Widget>(() => const MyPurchaseView());
                  },
                  width: 115.w,
                  borderRadius: 30.r,
                  height: 46.h,
                  fontSize: 14.sp,
                  text: 'Tracking',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
