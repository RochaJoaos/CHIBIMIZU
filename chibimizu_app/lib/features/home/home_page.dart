import 'package:flutter/material.dart';
import 'package:flame/game.dart';

import '../game/chibimizu_game.dart';

import 'widgets/bottom_buttons.dart';
import 'widgets/water_counter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentMl = 0;

  final int goalMl = 2000;

  void addWater() {
    setState(() {
      currentMl += 100;

      // impede passar da meta
      if (currentMl > goalMl) {
        currentMl = goalMl;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GameWidget(
            game: ChibimizuGame(),
          ),

          SafeArea(
            child: Column(
              children: [
                
                WaterCounter(
                  currentMl: currentMl,
                  goalMl: goalMl,

                  onWaterPressed: addWater,

                  onAddPressed: () {
                    print('Abrir editor');
                  },
                ),

                Expanded(
                  child: Container(),
                ),

                const BottomButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}