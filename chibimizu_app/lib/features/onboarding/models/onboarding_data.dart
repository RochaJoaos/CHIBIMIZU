import 'package:flutter/material.dart';

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

  final sipVolume = TextEditingController();

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

    sipVolume.dispose();
  }
}