import 'package:flutter/material.dart';

import '../../../core/widgets/app_text_field.dart';

import '../models/onboarding_data.dart';

class LoginForm extends StatelessWidget {

  final OnboardingData data;

  const LoginForm({

    super.key,

    required this.data,

  });

  @override
  Widget build(BuildContext context) {

    return Column(

      children: [

        AppTextField(

          hint: "Email",

          controller: data.email,

          keyboardType: TextInputType.emailAddress,

        ),

        const SizedBox(height: 16),

        AppTextField(

          hint: "Senha",

          controller: data.password,

          obscure: true,

        ),

        const SizedBox(height: 16),

        AppTextField(

          hint: "Confirmar senha",

          controller: data.confirmPassword,

          obscure: true,

        ),
      ],
    );
  }
}