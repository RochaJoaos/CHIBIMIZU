import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActionButton extends StatelessWidget {
  final String iconPath;
  final Color backgroundColor;
  final Color shadowColor;

  const ActionButton({
    super.key,
    required this.iconPath,
    required this.backgroundColor,
    required this.shadowColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 72,

      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),

        boxShadow: [
          BoxShadow(
            color: shadowColor,
            offset: const Offset(0, 4),
            blurRadius: 0,
          ),
        ],
      ),

      child: Center(
        child: SvgPicture.asset(
          iconPath,
          width: 42,
          height: 42,
        ),
      ),
    );
  }
}