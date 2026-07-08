import 'package:flutter/material.dart';
import '../../../core/widgets/app_text_field.dart';
import '../models/onboarding_data.dart';

class NameForm extends StatelessWidget {

  final OnboardingData data;

  const NameForm({

    super.key,

    required this.data,

  });

  @override
  Widget build(BuildContext context) {

    return AppTextField(

      hint: "Como você gostaria de ser chamado?",

      controller: data.name,

    );
  }
}