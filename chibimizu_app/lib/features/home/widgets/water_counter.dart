/*
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
*/

import 'package:flutter/material.dart';

import 'water_button.dart';
import 'water_bar.dart';
import 'water_add_button.dart';
import 'water_label.dart';

class WaterCounter extends StatelessWidget {
  final int currentMl;
  final int goalMl;

  final VoidCallback onWaterPressed;
  final VoidCallback onAddPressed;

  const WaterCounter({
    super.key,
    required this.currentMl,
    required this.goalMl,
    required this.onWaterPressed,
    required this.onAddPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 14,
        left: 16,
        right: 16,
      ),

      child: Column(
        children: [

          // LINHA SUPERIOR
          Row(
            children: [

              // GOTA
              WaterButton(
                onPressed: onWaterPressed,
              ),

              const SizedBox(width: 10),

              // BARRA
              Expanded(
                child: WaterBar(
                  currentMl: currentMl,
                  goalMl: goalMl,
                ),
              ),

              const SizedBox(width: 10),

              // BOTÃO +
              WaterAddButton(
                onPressed: onAddPressed,
              ),
            ],
          ),
          // TEXTO
          WaterLabel(
            currentMl: currentMl,
            goalMl: goalMl,
          ),
        ],
      ),
    );
  }
}