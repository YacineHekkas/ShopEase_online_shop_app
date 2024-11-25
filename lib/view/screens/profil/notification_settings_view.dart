import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopease_ecom_app/view/screens/profil/components/switch_tile.dart';

import '../../../data/const/constants.dart';


class NotificationSettingsView extends StatelessWidget {
  const NotificationSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Notifications',
          style: AppTypography.kSemiBold16.copyWith(color: AppColors.kGrey100),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: AppColors.kLine),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Message Notifications',
                  style: AppTypography.kSemiBold12.copyWith(
                    color: AppColors.kGrey60,
                  ),
                ),
                SwitchTile(
                  title: 'New Event',
                  onChanged: (value) {},
                ),
                const Divider(color: AppColors.kLine, height: 1),
                SwitchTile(
                  title: 'Delivery',
                  onChanged: (value) {},
                ),
                const Divider(color: AppColors.kLine, height: 1),
                SwitchTile(
                  title: 'Message',
                  onChanged: (value) {},
                ),
                const Divider(color: AppColors.kLine, height: 1),
                SwitchTile(
                  title: 'Payment',
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
