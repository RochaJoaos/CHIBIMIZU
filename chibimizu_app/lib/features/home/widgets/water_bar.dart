import 'package:flutter/material.dart';


class WaterBar extends StatelessWidget {
  const WaterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: 72,

      decoration: BoxDecoration(
        color: Colors.white,
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