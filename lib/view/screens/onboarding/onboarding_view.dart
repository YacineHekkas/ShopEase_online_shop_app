import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopease_ecom_app/data/const/constants.dart';
import 'package:shopease_ecom_app/models/onboarding.dart';
import 'package:shopease_ecom_app/view/screens/auth/signin_view.dart';
import 'package:shopease_ecom_app/view/screens/onboarding/components/custom_dots_indicator.dart';
import 'package:shopease_ecom_app/view/screens/onboarding/components/onboarding_card.dart';
import 'package:shopease_ecom_app/view/screens/widgets/buttons/primary_button.dart';
import 'package:shopease_ecom_app/view/screens/widgets/gradients/custom_gradient_card.dart';


class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(onboardingList[_currentIndex].bgImage),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomGradientCard(
          gradient: AppColors.customOnboardingGradient,
          child: Column(
            children: [
              const Spacer(),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: onboardingList.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return OnboardingCard(
                      onboarding: onboardingList[index],
                    );
                  },
                ),
              ),
              SizedBox(height: AppSpacing.twentyVertical),
              CustomDotsIndicator(
                dotsCount: onboardingList.length,
                position: _currentIndex,
              ),
              SizedBox(height: AppSpacing.thirtyVertical),
              PrimaryButton(
                onTap: () {
                  if (_currentIndex == onboardingList.length - 1) {
                    Get.to<Widget>(
                          () => const SignInView(),
                      transition: Transition.rightToLeft, // Choose your preferred transition
                      duration: const Duration(milliseconds: 500), // Adjust duration as needed
                    );
                  } else {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.fastOutSlowIn,
                    );
                  }
                },
                text: 'Continue',
              ),
              SizedBox(height: AppSpacing.thirtyVertical),
            ],
          ),
        ),
      ),
    );
  }
}
