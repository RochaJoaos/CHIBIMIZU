import 'package:flutter/material.dart';

import 'models/onboarding_data.dart';
import 'templates/onboarding_template.dart';

import 'widgets/login_form.dart';
import 'widgets/name_form.dart';
import 'widgets/info_form.dart';
import 'widgets/goal_form.dart';
import 'widgets/cup_form.dart';
import 'widgets/sip_form.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final OnboardingData data = OnboardingData();

  int currentStep = 0;

  static const int totalSteps = 6;

  @override
  void dispose() {
    data.dispose();
    super.dispose();
  }

  void nextStep() {
    if (currentStep < totalSteps - 1) {
      setState(() {
        currentStep++;
      });
    }
  }

  void previousStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep--;
      });
    }
  }

  String getTitle() {
    switch (currentStep) {
      case 0:
        return "Criar Conta";

      case 1:
        return "Como devemos te chamar?";

      case 2:
        return "Conte-nos sobre você";

      case 3:
        return "Meta diária";

      case 4:
        return "Seu copo";

      case 5:
        return "Quantidade de goles";

      default:
        return "";
    }
  }

  String getSubtitle() {
    switch (currentStep) {
      case 0:
        return "Vamos começar sua jornada.";

      case 1:
        return "Esse será seu nome dentro do app.";

      case 2:
        return "Precisamos dessas informações para calcular sua hidratação.";

      case 3:
        return "Você poderá alterar depois.";

      case 4:
        return "Qual o volume do copo que você costuma usar?";

      case 5:
        return "Quantos ml tem um gole seu?";

      default:
        return "";
    }
  }

  String getSpeech() {
    switch (currentStep) {
      case 0:
        return "Olá! Vamos cuidar da sua hidratação!";

      case 1:
        return "Como posso te chamar?";

      case 2:
        return "Só mais algumas informações.";

      case 3:
        return "Estamos quase terminando!";

      case 4:
        return "Agora vamos configurar seu copo.";

      case 5:
        return "Prontinho!";

      default:
        return "";
    }
  }

  Widget getForm() {
    switch (currentStep) {
      case 0:
        return LoginForm(data: data);

      case 1:
        return NameForm(data: data);

      case 2:
        return InfoForm(data: data);

      case 3:
        return GoalForm(data: data);

      case 4:
        return CupForm(data: data);

      case 5:
        return SipForm(data: data);

      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingTemplate(
      title: getTitle(),
      subtitle: getSubtitle(),
      speech: getSpeech(),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: getForm(),
      ),
      buttonText:
          currentStep == totalSteps - 1 ? "Finalizar" : "Continuar",
      currentStep: currentStep,
      totalSteps: totalSteps,
      onNext: nextStep,
      onBack: currentStep == 0 ? null : previousStep,
    );
  }
}