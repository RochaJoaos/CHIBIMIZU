import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppTextField extends StatelessWidget {
  final String hint;

  final bool obscure;

  final TextEditingController controller;

  final TextInputType keyboardType;

  const AppTextField({
    super.key,
    required this.hint,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,

      keyboardType: keyboardType,

      obscureText: obscure,

      decoration: InputDecoration(

        hintText: hint,

        filled: true,

        fillColor: Colors.white,

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 16,
        ),

        enabledBorder: OutlineInputBorder(

          borderRadius:
              BorderRadius.circular(18),

          borderSide: const BorderSide(

            color: AppColors.inputBorder,

          ),
        ),

        focusedBorder: OutlineInputBorder(

          borderRadius:
              BorderRadius.circular(18),

          borderSide: const BorderSide(

            color: AppColors.primary,

            width: 2,

          ),
        ),
      ),
    );
  }
}