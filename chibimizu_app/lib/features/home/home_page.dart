import 'package:flutter/material.dart';
import 'package:flame/game.dart';

import '../game/chibimizu_game.dart';
import 'widgets/bottom_buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                SizedBox(height: 80),

                Expanded(
                  child: Container(),
                ),

                BottomButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}