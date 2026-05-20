import 'package:flutter/material.dart';

class WaterAddButton extends StatelessWidget {

  final VoidCallback onPressed;

  const WaterAddButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,

      child: Container(
        width: 42,
        height: 42,

        decoration: BoxDecoration(
          color: const Color(0xFF2F8FFF),
          borderRadius: BorderRadius.circular(12),
        ),

        child: const Center(
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 32,
          ),
        ),
      ),
    );
  }
}