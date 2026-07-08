import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class OnboardingNavigation extends StatelessWidget {
  final VoidCallback? onBack;
  final VoidCallback onNext;
  final String nextText;

  const OnboardingNavigation({
    super.key,
    this.onBack,
    required this.onNext,
    required this.nextText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (onBack != null)
          SizedBox(
            width: 100,
            height: 42,
            child: ElevatedButton(
              onPressed: onBack,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.buttoncard,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                "Voltar",
                style: AppTextStyles.altbutton,
                ),
            ),
          ),

        if (onBack != null)
          const SizedBox(width: 12),

        SizedBox(
          width: 140,
          height: 42,
          child: ElevatedButton(
            onPressed: onNext,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Text(
              nextText,
              style: AppTextStyles.button,
            ),
          ),
        ),
      ],
    );
  }
}