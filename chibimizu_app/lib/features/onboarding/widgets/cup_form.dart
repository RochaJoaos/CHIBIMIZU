import 'package:flutter/material.dart';

import '../models/onboarding_data.dart';

class CupForm extends StatefulWidget {
  final OnboardingData data;

  const CupForm({
    super.key,
    required this.data,
  });

  @override
  State<CupForm> createState() => _CupFormState();
}

class _CupFormState extends State<CupForm> {
  double value = 500;

  @override
  void initState() {
    super.initState();

    widget.data.cupVolume.text = value.round().toString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: value,
          min: 100,
          max: 2000,
          divisions: 38,
          label: "${value.round()} ml",
          onChanged: (v) {
            setState(() {
              value = v;
              widget.data.cupVolume.text =
                  value.round().toString();
            });
          },
        ),

        Text(
          "${value.round()} ml",
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 12),

        const Text(
          "Escolha o volume do recipiente que você mais utiliza.",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}