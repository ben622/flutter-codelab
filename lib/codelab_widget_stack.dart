import 'package:flutter/material.dart';

/**
 * 以简单的方式实现重叠效果
 */
class CodelabWidgetStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      width: 500,
      height: 500,
      child: Stack(
        textDirection: TextDirection.ltr,
        children: <Widget>[
          generatorContainer(200,200,Colors.red),
          generatorContainer(160,160,Colors.cyan),
          generatorContainer(120,120,Colors.green),
          generatorContainer(80,80,Colors.blue)
        ],
      ),
    );
  }

  Widget generatorContainer(double _width,double _height,Color color){
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: _width,
        height: _height,
        color: color,
      ),
    );

  }
}

