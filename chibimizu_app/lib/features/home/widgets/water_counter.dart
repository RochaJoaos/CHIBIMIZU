import 'package:flutter/material.dart';

import 'water_button.dart';
import 'water_bar.dart';

class WaterCounter extends StatelessWidget {
  const WaterCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
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
                currentMl: 1282,
                goalMl: 2000,
              ),
            ),

            Positioned(
              left: 0,
              top: 0,
              child: WaterButton(),
            ),
          ],
        ),
      ),
    );
  }
}
