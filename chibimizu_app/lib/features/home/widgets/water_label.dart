import 'package:flutter/material.dart';

class WaterLabel extends StatelessWidget {
  final int currentMl;
  final int goalMl;

  const WaterLabel({
    super.key,
    required this.currentMl,
    required this.goalMl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 2,
      ),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),

        boxShadow: const [
          BoxShadow(
            color: Color(0x22000000),
            offset: Offset(0, 4),
            blurRadius: 6,
          ),
        ],
      ),

      child: Text(
        '$currentMl - $goalMl ml',

        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color(0xFF2B6DBA),
        ),
      ),
    );
  }
}