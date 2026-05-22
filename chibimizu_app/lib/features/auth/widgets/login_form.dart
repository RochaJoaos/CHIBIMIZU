import 'package:flutter/material.dart';

import 'create_account_link.dart';
import 'google_sign_button.dart';
import 'sign_input.dart';
import 'sign_submit_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        const Text(
          'Entrar',

          style: TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.w800,
            color: Color(0xFF008CFF),
          ),
        ),

        const SizedBox(height: 28),

        const GoogleSignButton(),

        const SizedBox(height: 32),

        const SignInput(
          label: 'email',
        ),

        const SizedBox(height: 14),

        const SignInput(
          label: 'senha',
          obscureText: true,
        ),

        const SizedBox(height: 32),

        const SignSubmitButton(),

        const SizedBox(height: 22),

        const CreateAccountLink(),
      ],
    );
  }
}