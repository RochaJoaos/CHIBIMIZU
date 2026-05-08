import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WaterButton extends StatelessWidget {
  final VoidCallback onPressed;

  const WaterButton({super.key, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: 64,
        height: 64,
        child: SvgPicture.asset(
          'assets/icons/water_drop.svg',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
