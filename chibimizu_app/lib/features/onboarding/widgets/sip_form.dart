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

        AppTextField(
          hint: "Ex.: 20 ml",
          controller: data.sipVolume,
          keyboardType: TextInputType.number,
        ),

        const SizedBox(height: 16),

        const Text(
          "Depois você poderá calibrar esse valor.",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}