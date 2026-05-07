import 'package:flutter/material.dart';
import 'package:flame/game.dart';

import '../game/chibimizu_game.dart';
import 'widgets/bottom_buttons.dart';
import 'widgets/water_counter.dart';

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
                // 🔹 BARRA SUPERIOR
                const WaterCounter(),

                // 🔹 ESPAÇO DO JOGO
                Expanded(
                  child: Container(),
                ),

                // 🔹 BOTÕES INFERIORES
                const BottomButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}