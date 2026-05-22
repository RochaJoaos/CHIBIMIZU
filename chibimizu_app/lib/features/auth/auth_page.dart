import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import '../game/auth_game.dart';

import 'widgets/auth_card.dart';
import 'widgets/login_form.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [

          // FLAME NO FUNDO
          GameWidget(
            game: AuthGame(),
          ),

          // UI SOBREPOSTA
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,

              child: SingleChildScrollView(
                child: AuthCard(
                  child: const LoginForm(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}