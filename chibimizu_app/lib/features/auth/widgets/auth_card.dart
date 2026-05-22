import 'package:flutter/material.dart';

class AuthCard extends StatelessWidget {

  final Widget child;

  const AuthCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,

      padding: const EdgeInsets.only(
        top: 28,
        left: 28,
        right: 28,
        bottom: 24,
      ),

      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),

        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(26),
          bottomRight: Radius.circular(26),
        ),

        boxShadow: [
          BoxShadow(
            color: Color(0x33000000),
            offset: Offset(0, 6),
            blurRadius: 10,
          ),
        ],
      ),

      child: child,
    );
  }
}