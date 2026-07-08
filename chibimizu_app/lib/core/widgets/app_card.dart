import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';

class AppCard extends StatelessWidget {
  final Widget child;

  const AppCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.cardWidth,
      margin: EdgeInsets.zero,

      decoration: BoxDecoration(
        color: AppColors.card,

        borderRadius: BorderRadius.only(

          bottomLeft: Radius.circular(AppSizes.radius),
          bottomRight: Radius.circular(AppSizes.radius),

        ),

        boxShadow: const [
          BoxShadow(
            blurRadius: 12,
            color: Colors.black12,
            offset: Offset(0, 4),
          )
        ],
      ),

      child: child,
    );
  }
}