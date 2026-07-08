import 'package:flutter/material.dart';
import '../../../core/services/hydration_service.dart';

class OnboardingData {

  // Login

  final email = TextEditingController();

  final password = TextEditingController();

  final confirmPassword = TextEditingController();

  // Dados pessoais

  final name = TextEditingController();

  final age = TextEditingController();

  final weight = TextEditingController();

  final height = TextEditingController();

  // Meta

  final dailyGoal = TextEditingController();

  // Copo

  final cupVolume = TextEditingController();

  // Goles

  final sipCount = TextEditingController();

  void updateGoalFromWeight() {
    final userWeight = double.tryParse(weight.text);

    if (userWeight == null || userWeight <= 0) {
      dailyGoal.clear();
      return;
    }

    dailyGoal.text = HydrationService.calculateGoal(
      weight: userWeight,
    ).toString();
  }

  void dispose() {

    email.dispose();
    password.dispose();
    confirmPassword.dispose();

    name.dispose();
    age.dispose();
    weight.dispose();
    height.dispose();

    dailyGoal.dispose();

    cupVolume.dispose();

    sipCount.dispose();
  }
}