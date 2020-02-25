import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CodelabWidgetWrap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      color: Colors.black12,
      child: Wrap(
        textDirection: TextDirection.ltr,
        direction: Axis.horizontal,

        spacing: 10,
        runSpacing: 10,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            color: Colors.red,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.green,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.blue,
          ),Container(
            width: 50,
            height: 50,
            color: Colors.yellow,
          )
          ,Container(
            width: 50,
            height: 50,
            color: Colors.yellow,
          )
          ,Container(
            width: 50,
            height: 50,
            color: Colors.yellow,
          )
          ,Container(
            width: 50,
            height: 50,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }

}
