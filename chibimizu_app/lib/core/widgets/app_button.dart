import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';
import '../constants/app_text_styles.dart';

class AppButton extends StatelessWidget {
  final String text;

  final VoidCallback onPressed;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSizes.buttonWidth,
      height: AppSizes.buttonHeight,

      child: ElevatedButton(
        onPressed: onPressed,

        style: ElevatedButton.styleFrom(

          backgroundColor: AppColors.primary,

          elevation: 4,

          shape: RoundedRectangleBorder(

            borderRadius:
                BorderRadius.circular(50),

          ),
        ),

        child: Text(
          text,
          style: AppTextStyles.button,
        ),
      ),
    );
  }
}