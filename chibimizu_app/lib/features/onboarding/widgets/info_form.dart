import 'package:flutter/material.dart';
import '../../../core/widgets/app_text_field.dart';
import '../models/onboarding_data.dart';

class InfoForm extends StatelessWidget {

  final OnboardingData data;

  const InfoForm({
    super.key,
    required this.data,

  });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        AppTextField(
          hint: "idade",
          
          controller: data.age,

          keyboardType: TextInputType.number,

        ),

        const SizedBox(height:16),

        AppTextField(
          hint: "peso (kg)",
          controller: data.weight,
          keyboardType: TextInputType.number,
          onChanged: (_) {
            data.updateGoalFromWeight();
          },
        ),
        
        const SizedBox(height:16),

        AppTextField(

          hint: "altura (cm)",

          controller: data.height,

          keyboardType: TextInputType.number,

        ),

      ],

    );
  }
}