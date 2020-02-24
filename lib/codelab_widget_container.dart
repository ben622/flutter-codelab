import 'package:flutter/material.dart';
import 'codelab_widget_text.dart';
class CodelabWidgetContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.all(20),
        child: CodelabWidgetText(),
        color: Colors.blue,
        width: 500,
        height: 250,
        transform: Matrix4.rotationZ(0.1),
      ),
    );
  }

}