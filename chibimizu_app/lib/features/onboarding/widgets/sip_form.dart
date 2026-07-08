import 'package:flutter/material.dart';

import '../../../core/widgets/app_text_field.dart';
import '../models/onboarding_data.dart';

class SipForm extends StatelessWidget {
  final OnboardingData data;

  const SipForm({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Text(
          "Seu recipiente possui aproximadamente\n${data.cupVolume.text} ml.",
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 20),

        const Text(
          "Encha completamente o recipiente.\n\nBeba normalmente até terminar e conte quantos goles foram necessários.",
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: 24),

        AppTextField(
          hint: "Quantidade de goles",
          controller: data.sipCount,
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }
}