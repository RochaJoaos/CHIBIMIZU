import 'package:flutter/material.dart';

class SpeechBubble extends StatelessWidget {

  final String text;

  const SpeechBubble({

    super.key,

    required this.text,

  });

  @override
  Widget build(BuildContext context) {

    return Container(

      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius:
            BorderRadius.circular(18),

      ),

      child: Text(text),

    );
  }
}