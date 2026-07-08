import 'package:flutter/material.dart';

import '../constants/app_text_styles.dart';

class AppTitle extends StatelessWidget {

  final String title;

  final String? subtitle;

  const AppTitle({

    super.key,

    required this.title,

    this.subtitle,

  });

  @override
  Widget build(BuildContext context) {

    return Column(

      children: [

        Text(

          title,

          style: AppTextStyles.title,

          textAlign: TextAlign.center,

        ),

        if(subtitle != null)...[

          const SizedBox(height:10),

          Text(

            subtitle!,

            style: AppTextStyles.subtitle,

            textAlign: TextAlign.center,

          ),

        ]

      ],
    );
  }
}