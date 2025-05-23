import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shopease_ecom_app/data/const/constants.dart';
import 'package:shopease_ecom_app/models/user_model.dart';
import 'package:shopease_ecom_app/view/screens/profil/edit_profile.dart';


class ProfileHeaderCard extends StatelessWidget {
  final UserModel user;
  const ProfileHeaderCard({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 40.r,
          backgroundImage: AssetImage(user.profilePic),
        ),
        SizedBox(
          width: AppSpacing.tenHorizontal,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(user.name, style: AppTypography.kSemiBold18),
          SizedBox(height: AppSpacing.fiveVertical),
          Text(
            '@${user.location}',
            style: AppTypography.kMedium14.copyWith(
              color: AppColors.kGrey60,
            ),
          ),
        ],),
        const Spacer(),
        IconButton(
          icon: SvgPicture.asset(AppAssets.kEdit),
          onPressed: () {
            Get.to<Widget>(()=>const EditProfile(),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300),);
          },
        ),
      ],
    );
  }
}
