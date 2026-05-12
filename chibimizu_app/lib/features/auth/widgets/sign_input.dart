import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignInput extends StatelessWidget {
  final String label;
  final bool obscureText;

  const SignInput({
    super.key,
    required this.label,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFF008CFF),
            fontWeight: FontWeight.w500,
          ),
        ),

        const SizedBox(height: 3),

        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: 36,
          decoration: BoxDecoration(
            color: const Color(0xFFE8E8E8),
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            obscureText: obscureText,
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                left: 12,
                right: 12,
                bottom: 13,
              ),
            ),
            style: const TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}