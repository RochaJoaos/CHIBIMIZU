import 'package:flutter/widgets.dart';

class OnboardingStep {
  final String title;
  final String? subtitle;

  final Widget body;

  final String buttonText;

  final String? speech;

  const OnboardingStep({
    required this.title,
    this.subtitle,
    required this.body,
    this.buttonText = "Continuar",
    this.speech,
  });
}