import 'package:flutter/material.dart';

import 'water_button.dart';
import 'water_bar.dart';

class WaterCounter extends StatelessWidget {

  final int currentMl;
  final int goalMl;

  final VoidCallback onWaterPressed;

  const WaterCounter({
    super.key,
    required this.currentMl,
    required this.goalMl,
    required this.onWaterPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 14,
        right: 14,
      ),
      child: SizedBox(
        height: 64,
        child: Stack(
          clipBehavior: Clip.none,
          children: [

            Positioned(
              left: 36,
              right: 0,
              top: 10,
              child: WaterBar(
                currentMl: currentMl,
                goalMl: goalMl,
              ),
            ),

            Positioned(
              left: 0,
              top: 0,
              child: WaterButton(
                onPressed: onWaterPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}