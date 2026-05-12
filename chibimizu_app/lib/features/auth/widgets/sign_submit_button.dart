import 'package:flutter/material.dart';

class SignSubmitButton extends StatelessWidget {
  const SignSubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF57E000),
        borderRadius: BorderRadius.circular(7),
      ),
      child: const Center(
        child: Text(
          'entrar',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}