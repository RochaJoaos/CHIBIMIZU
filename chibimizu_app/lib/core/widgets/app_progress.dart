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

    return SizedBox(

      width:220,

      child: LinearProgressIndicator(

        value: current / total,

      ),

    );
  }
}