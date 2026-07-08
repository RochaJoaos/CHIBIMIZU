import 'package:flutter/material.dart';

import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_card.dart';
import '../../../core/widgets/app_progress.dart';
import '../../../core/widgets/app_title.dart';
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
        child: Stack(
          children: [

            if (onBack != null)
              Positioned(
                top: 20,
                left: 20,
                child: IconButton(
                  onPressed: onBack,
                  icon: const Icon(Icons.arrow_back_ios_new),
                ),
              ),

            Center(
              child: Column(
                children: [

                  const Spacer(),

                  Stack(
                    alignment: Alignment.bottomCenter,
                    clipBehavior: Clip.none,
                    children: [

                      AppCard(
                        child: Padding(
                          padding: const EdgeInsets.all(28),
                          child: Column(
                            children: [

                              AppTitle(
                                title: title,
                                subtitle: subtitle,
                              ),

                              const SizedBox(height: 28),

                              Expanded(
                                child: body,
                              ),
                            ],
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: -22,
                        child: AppButton(
                          text: buttonText,
                          onPressed: onNext,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 55),

                  if (speech != null)
                    SpeechBubble(text: speech!),

                  const SizedBox(height: 15),

                  pet ??
                      const SizedBox(
                        height: 220,
                      ),

                  const SizedBox(height: 30),

                  AppProgress(
                    current: currentStep + 1,
                    total: totalSteps,
                  ),

                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}