import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CodelabMaterialWidgetPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = PageController(initialPage: 0);
    // TODO: implement build
    return MaterialApp(
      title: "CodelabMaterialWidgetPageView",
      home: Scaffold(
        appBar: AppBar(
          title: Text("CodelabMaterialWidgetPageView"),
        ),
        body: PageView(
          scrollDirection: Axis.vertical,
          controller: _controller,
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: Text("PageView 1", style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold))),
            Container(
                alignment: Alignment.center,
                color: Colors.blue,
                child: Text("PageView 2", style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold))),
            Container(
                alignment: Alignment.center,
                color: Colors.yellow,
                child: Text("PageView 2", style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)))
          ],
        ),
      ),
    );
  }
}
