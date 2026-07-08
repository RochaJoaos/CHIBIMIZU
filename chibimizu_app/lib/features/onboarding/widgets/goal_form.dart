import 'package:flutter/material.dart';

import '../../../core/widgets/app_text_field.dart';
import '../models/onboarding_data.dart';

class GoalForm extends StatelessWidget {
  final OnboardingData data;

  const GoalForm({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        AppTextField(
          hint: "Ex.: 2500 ml",
          controller: data.dailyGoal,
          keyboardType: TextInputType.number,
        ),

        const SizedBox(height: 16),

        const Text(
          "Você poderá deixar em branco para calcular automaticamente.",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}