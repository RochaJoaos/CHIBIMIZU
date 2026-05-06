import 'package:chibimizu_app/features/home/widgets/water_bar.dart';
import 'package:chibimizu_app/features/home/widgets/water_button.dart';
import 'package:flutter/material.dart';

class WaterMCounter extends StatelessWidget {
    const WaterMCounter ({super.key});

    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: const EdgeInsets.only(left: 14, right: 14, bottom: 14),
            child: Row(
                children: const[
                    SizedBox(width: 4),
                    Expanded(
                        child: WaterButton(),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                        child: WaterBar(),
                        )
                ],
            ),
        );
    }
}