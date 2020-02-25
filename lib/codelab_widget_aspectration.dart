import 'package:flutter/material.dart';


class CodelabWidgetAspectRation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CodelabWidgetAspectRation",
      home: Scaffold(
        appBar: AppBar(
          title: Text("CodelabWidgetAspectRation"),
        ),
        body: Align(
          alignment: Alignment.topLeft,
          child:AspectRatio(
              aspectRatio: 1,
              child: Container(
                color: Colors.red,
              ),
            )
        ),
      ),
    );
  }

}