import 'package:flutter/material.dart';

import 'widgets/google_sign_button.dart';
import 'widgets/sign_input.dart';
import 'widgets/sign_submit_button.dart';
import 'widgets/create_account_link.dart';

class SignPage extends StatelessWidget {
  const SignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 150,
                color: const Color(0xFFBFEAFF),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42),
              child: Column(
                children: [
                  const SizedBox(height: 38),

                  const Text(
                    'Entrar',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF008CFF),
                    ),
                  ),

                  const SizedBox(height: 32),

                  const GoogleSignButton(),

                  const SizedBox(height: 25),

                  const SignInput(
                    label: 'email',
                  ),

                  const SizedBox(height: 20),

                  const SignInput(
                    label: 'senha',
                    obscureText: true,
                  ),

                  const SizedBox(height: 36),

                  const SignSubmitButton(),

                  const SizedBox(height: 18),

                  const CreateAccountLink(),

                  const Spacer(),

                  Image.asset(
                    'assets/images/turtle_login.png',
                    width: 180,
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}