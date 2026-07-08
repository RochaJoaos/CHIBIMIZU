import 'package:flutter/material.dart';

import '../../../core/widgets/app_text_field.dart';
import '../models/onboarding_data.dart';

class CupForm extends StatelessWidget {
  final OnboardingData data;

  const CupForm({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        AppTextField(
          hint: "Ex.: 300 ml",
          controller: data.cupVolume,
          keyboardType: TextInputType.number,
        ),

        const SizedBox(height: 16),

        const Text(
          "Informe o copo que você mais utiliza.",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}