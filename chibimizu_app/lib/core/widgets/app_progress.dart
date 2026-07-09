import 'package:flutter/material.dart';

class AppProgress extends StatelessWidget {
  final int current;
  final int total;

  const AppProgress({
    super.key,
    required this.current,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    // Cada etapa corresponde diretamente a um sprite.
    int sprite = current - 1;

    // Garante que nunca saia do intervalo válido.
    sprite = sprite.clamp(0, total - 1);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: ScaleTransition(
                scale: animation,
                child: child,
              ),
            );
          },
          child: Image.asset(
            "assets/progress/cup_$sprite.png",
            key: ValueKey(sprite),
            width: 40,
            height: 40,
          ),
        ),
      ],
    );
  }
}