import 'package:flutter/material.dart';

import '../models/onboarding_data.dart';

class FinishForm extends StatelessWidget {
  final OnboardingData data;

  const FinishForm({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final double cup =
        double.tryParse(data.cupVolume.text) ?? 0;

    final double sips =
        double.tryParse(data.sipCount.text) ?? 1;

    final double mlPerSip = cup / sips;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [

        const Text(
          "Sua tartaruga já está pronta para acompanhar sua hidratação.",
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: 24),

        _InfoTile(
          icon: Icons.person,
          title: "Nome",
          value: data.name.text,
        ),

        _InfoTile(
          icon: Icons.flag,
          title: "Meta diária",
          value: "${data.dailyGoal.text} ml",
        ),

        _InfoTile(
          icon: Icons.local_drink,
          title: "Recipiente",
          value: "${data.cupVolume.text} ml",
        ),

        _InfoTile(
          icon: Icons.water_drop,
          title: "Volume por gole",
          value: "${mlPerSip.toStringAsFixed(1)} ml",
        ),
      ],
    );
  }
}

class _InfoTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const _InfoTile({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Row(
        children: [

          Icon(
            icon,
            size: 22,
            color: Colors.blueAccent,
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),

                const SizedBox(height: 2),

                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}