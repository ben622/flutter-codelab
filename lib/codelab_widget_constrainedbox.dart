import 'package:flutter/material.dart';

/**
 * 约束children最大宽度以及最小高度
 */
class CodelabWidgetConstrainedBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: "CodelabWidgetConstrainedBox",
        home: Scaffold(
            appBar: AppBar(
              title: Text("CodelabWidgetConstrainedBox"),
            ),
            body:Center(child: Container(
              color: Colors.blue,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: 100,
                    minHeight: 100
                ),
                child: Text("This Is Long Long Long Text!",style: TextStyle(fontSize: 20,color: Colors.red),textAlign:TextAlign.center),
              ),
            ))

        )
    );
  }

}

