import 'package:flutter/material.dart';

/**
 * CodelabWidgetText
 */
class CodelabWidgetText extends StatelessWidget {
  final _vartext = "Flutter";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Hello $_vartext',
          style: TextStyle(
              color: Color(0xFFFF0000),
              fontSize: 20,
              fontWeight: FontWeight.bold),
          textDirection: TextDirection.ltr,

        )
      ],
    );
  }
}
