import 'package:flutter/material.dart';

class SignSubmitButton extends StatelessWidget {
  const SignSubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 36,
      decoration: BoxDecoration(
        color: const Color(0xFF57E000),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Text(
          'entrar',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}