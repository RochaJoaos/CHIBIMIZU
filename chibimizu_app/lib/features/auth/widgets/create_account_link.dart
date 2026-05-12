import 'package:flutter/material.dart';

class CreateAccountLink extends StatelessWidget {
  const CreateAccountLink({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'criar conta',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: Color(0xFF57E000),
      ),
    );
  }
}