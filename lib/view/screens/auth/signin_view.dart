import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:shopease_ecom_app/view/screens/auth/components/agree_terms_text_card.dart';
import 'package:shopease_ecom_app/view/screens/auth/components/auth_appbar.dart';
import 'package:shopease_ecom_app/view/screens/auth/components/auth_field.dart';
import 'package:shopease_ecom_app/view/screens/auth/components/remember_me_card.dart';
import 'package:shopease_ecom_app/view/screens/auth/components/text_with_divider.dart';
import 'package:shopease_ecom_app/view/screens/auth/forget_password.dart';
import 'package:shopease_ecom_app/view/screens/landingPage/landing_page.dart';
import 'package:shopease_ecom_app/view/screens/widgets/buttons/custom_text_button.dart';
import 'package:shopease_ecom_app/view/screens/widgets/buttons/primary_button.dart';

import '../../../data/const/constants.dart';
import 'components/custom_social_button.dart';
import 'signup_view.dart';


class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {

  final storage = FlutterSecureStorage();


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isRemember = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AuthAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              children: [
                Text('Let’s Sign you in', style: AppTypography.kBold24),
                SizedBox(height: AppSpacing.fiveVertical),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur',
                  style: AppTypography.kMedium14.copyWith(
                    color: AppColors.kGrey60,
                  ),
                ),
                SizedBox(height: AppSpacing.thirtyVertical),
                // Email Field.
                AuthField(
                  title: 'Email Address',
                  hintText: 'Enter your email address',
                  controller: _emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email is required';
                    } else if (!value.isEmail) {
                      return 'Invalid email address';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(height: AppSpacing.fifteenVertical),
                // Password Field.
                AuthField(
                  title: 'Password',
                  hintText: 'Enter your password',
                  controller: _passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required';
                    } else if (value.length < 8) {
                      return 'Password should be at least 8 characters long';
                    }
                    return null;
                  },
                  isPassword: true,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: AppSpacing.fiveVertical),
                Row(
                  children: [
                    RememberMeCard(
                      onChanged: (value) {
                        setState(() {
                          isRemember = value;
                        });
                      },
                    ),
                    const Spacer(),
                    CustomTextButton(
                      onPressed: () {
                        Get.to<Widget>(() => const ForgetPassword());
                      },
                      text: 'Forget Password',
                    ),
                  ],
                ),
                SizedBox(height: AppSpacing.fifteenVertical),
                PrimaryButton(
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {

                      await storage.write(key: 'auth', value: "token");

                      Get.offAll<Widget>(
                            () => const LandingPage(),
                        transition: Transition.rightToLeft, // Choose your preferred transition
                        duration: const Duration(milliseconds: 500), // Customize duration if needed
                      );

                    }
                  },
                  text: 'Sign In',
                ),
                SizedBox(height: AppSpacing.twentyVertical),
                RichText(
                  text: TextSpan(
                    text: 'Don’t have an account? ',
                    style: AppTypography.kSemiBold16
                        .copyWith(color: AppColors.kGrey70),
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {


                            Get.to<Widget>(() => const SignUpView());
                          },
                        style: AppTypography.kSemiBold16
                            .copyWith(color: AppColors.kPrimary),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppSpacing.twentyVertical),
                const TextWithDivider(),
                SizedBox(height: AppSpacing.twentyVertical),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomSocialButton(
                      onTap: () {},
                      icon: AppAssets.kGoogle,
                    ),
                    CustomSocialButton(
                      onTap: () {},
                      icon: AppAssets.kApple,
                    ),
                    CustomSocialButton(
                      onTap: () {},
                      icon: AppAssets.kFacebook,
                    ),
                  ],
                ),
                SizedBox(height: AppSpacing.twentyVertical),
                const AgreeTermsTextCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
