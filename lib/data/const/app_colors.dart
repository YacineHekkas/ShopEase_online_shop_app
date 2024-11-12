import 'package:flutter/material.dart';

class AppColors {
  // Primary & Secondary.
  static const Color kPrimary = Color(0xFF0103ba);
  static const Color kSecondary = Color(0xFF110C1D);
  static const Color kSecondaryPrimary = Color(0xFFf9333b);
  // Alerts.
  static const Color kSuccess = Color(0xFF7AC678);
  static const Color kError = Color(0xFFF9333b);
  static const Color kWarning = Color(0xFFFFCD1A);
  static const Color kBlue = Color(0xFF4040AD);
  // Additional Colors.
  static const Color kWhite = Color(0xFFFEFEFE);
  static const Color kGreenLight = Color(0xFFF8FCF8);
  static const Color kLine = Color(0xFFE9EBED);
  static const Color kLineDark = Color(0xFF4A4A65);
  // Grey Scale.
  static const Color kGrey10 = Color(0xFFFDFDFD);
  static const Color kGrey20 = Color(0xFFECF1F6);
  static const Color kGrey30 = Color(0xFFE3E9ED);
  static const Color kGrey40 = Color(0xFFD1D8DD);
  static const Color kGrey50 = Color(0xFFBFC6CC);
  static const Color kGrey60 = Color(0xFF9CA4AB);
  static const Color kGrey70 = Color(0xFF78828A);
  static const Color kGrey80 = Color(0xFF66707A);
  static const Color kGrey90 = Color(0xFF434E58);
  static const Color kGrey100 = Color(0xFF171725);
  // Gradients.
  static LinearGradient customOnboardingGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      const Color(0x88110C1D).withOpacity(0.0),
      const Color(0xC3110C1D),
    ],
  );
}
