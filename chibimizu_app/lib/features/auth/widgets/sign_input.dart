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
            fontSize: 12,
            color: Color(0xFF008CFF),
            fontWeight: FontWeight.w500,
          ),
        ),

        const SizedBox(height: 3),

        Container(
          height: 22,
          decoration: BoxDecoration(
            color: const Color(0xFFE8E8E8),
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: Color(0x22000000),
                offset: Offset(0, 2),
                blurRadius: 4,
              ),
            ],
          ),
          child: TextField(
            obscureText: obscureText,
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                left: 10,
                right: 10,
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