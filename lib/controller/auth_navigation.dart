import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:shopease_ecom_app/view/screens/onboarding/onboarding_view.dart';

import '../view/screens/landingPage/landing_page.dart';


Future<void> checkAuthStatus() async {
  final storage = FlutterSecureStorage();


  String? authToken = await storage.read(key: 'auth');

  if (authToken != null) {
    // Navigate to home page if token exists
    Get.offAll(() => const LandingPage());
  } else {
    // Navigate to login page if token is absent
    Get.offAll(() => const OnboardingView());
  }
}
