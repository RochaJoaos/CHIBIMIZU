import 'package:flutter/material.dart';

import 'menu_button.dart';
import 'action_button.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 14, bottom: 14),
      child: Row(
        children: const [
          Expanded(
            child: MenuButton(),
          ),

          SizedBox(width: 8),

          ActionButton(
            iconPath: 'assets/icons/shop.svg',
            backgroundColor: Color(0xFFFFCFCF),
            shadowColor: Color(0xFFD78888),
          ),

          SizedBox(width: 8),

          ActionButton(
            iconPath: 'assets/icons/water.svg',
            backgroundColor: Color(0xFFCFFDFF),
            shadowColor: Color(0xFF88CFD7),
          ),

          SizedBox(width: 8),

          ActionButton(
            iconPath: 'assets/icons/setts.svg',
            backgroundColor: Color(0xFFFFF2CF),
            shadowColor: Color(0xFFEFDA97),
          ),
        ],
      ),
    );
  }
}