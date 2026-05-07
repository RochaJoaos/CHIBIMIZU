import 'package:flutter/material.dart';

class WaterBar extends StatelessWidget {
  final int currentMl;
  final int goalMl;

  const WaterBar({
    super.key,
    required this.currentMl,
    required this.goalMl,
  });

  @override
  Widget build(BuildContext context) {
    final double progress = currentMl / goalMl;

    return SizedBox(
      height: 42,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // FUNDO CINZA
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: [
                Container(
                  height: 36,
                  decoration: BoxDecoration(
                    color: const Color(0xFF9E9E9E),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),

                // SOMBRA INTERNA SUPERIOR
                Container(
                  height: 36,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.center,
                      colors: [
                        Color(0x55000000),
                        Color(0x00000000),
                      ],
                    ),
                  ),
                ),

                // BRILHO INTERNO INFERIOR
                Container(
                  height: 36,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [
                        Color(0x22FFFFFF),
                        Color(0x00FFFFFF),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // BARRA AZUL (SEM SOMBRA)
          FractionallySizedBox(
            widthFactor: progress.clamp(0.0, 1.0),
            child: Container(
              height: 36,
              decoration: BoxDecoration(
                color: const Color(0xFF38BDF2),
                borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(102, 73, 73, 73),
                          offset: Offset(4, 0),
                          blurRadius: 4,
                        ),
                      ],
              ),
            ),
          ),

          // TEXTO
          Positioned(
            left: 18,
            bottom: -2,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 3,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),

                boxShadow: const [
                  BoxShadow(
                    color: Color(0x22000000),
                    offset: Offset(0, 2),
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Text(
                '$currentMl - $goalMl ml',
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF0077C8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}