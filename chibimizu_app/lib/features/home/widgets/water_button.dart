import 'package:flutter/material.dart';

class WaterButton extends StatelessWidget {
  const WaterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: 1,

      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 47, 0, 255),
        borderRadius: BorderRadius.circular(60),

        boxShadow: const [
          BoxShadow(
            color: Color(0xFF8E8E8E),
            offset: Offset(0, 4),
            blurRadius: 0,
          ),
        ],
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          const SizedBox(width: 8),

          const Text(
            'menu',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}