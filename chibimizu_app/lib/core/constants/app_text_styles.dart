import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static const title = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: AppColors.title,
  );

  static const subtitle = TextStyle(
    fontSize: 16,
    color: AppColors.subtitle,
  );

  static const input = TextStyle(
    fontSize: 16,
  );

  static const button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

    static const altbutton = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Color(0xFF616161),
  );
}