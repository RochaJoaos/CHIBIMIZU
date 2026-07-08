import 'package:flutter/material.dart';

class FormCard extends StatelessWidget {

  final Widget child;

  const FormCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 350,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: child,
    );
  }
}