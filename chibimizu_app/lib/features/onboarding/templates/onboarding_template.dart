import 'package:flutter/material.dart';

import '../../../core/widgets/app_card.dart';
import '../../../core/widgets/app_progress.dart';
import '../../../core/widgets/app_title.dart';
import '../../../core/widgets/onboarding_navigation.dart';
import '../../../core/widgets/speech_bubble.dart';

class OnboardingTemplate extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget body;
  final String buttonText;
  final String? speech;
  final Widget? pet;
  final int currentStep;
  final int totalSteps;
  final VoidCallback onNext;
  final VoidCallback? onBack;

  const OnboardingTemplate({
    super.key,
    required this.title,
    this.subtitle,
    required this.body,
    required this.currentStep,
    required this.totalSteps,
    required this.onNext,
    required this.buttonText,
    this.speech,
    this.pet,
    this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8CCBFF),

      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [

                  AppCard(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                        24,
                        40,
                        24,
                        50, // espaço para os botões
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          AppTitle(
                            title: title,
                            subtitle: subtitle,
                          ),

                          const SizedBox(height: 30),
                          body,

                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: -16,
                    left: 24,
                    right: 24,
                    child: OnboardingNavigation(
                      onBack: onBack,
                      onNext: onNext,
                      nextText: buttonText,
                    ),
                  ),

                  const SizedBox(height: 24),
                ],
              ),

              if (speech != null) ...[
                const SizedBox(height: 24),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SpeechBubble(
                    text: speech!,
                  ),
                ),
              ],

              const SizedBox(height: 24),


              Center(
                child: AppProgress(
                  current: currentStep + 1,
                  total: totalSteps,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}