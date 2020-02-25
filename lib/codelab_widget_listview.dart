import 'package:flutter/material.dart';


class CodelabWidgetListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final _items = ["A","B","C","D","E","F","G","H","I","J","K"];
    final _colors = [900,800,700,600,500,400,300,200,100,50,25];
    return MaterialApp(
        title: "CodelabWidgetListView",
        home: Scaffold(
        appBar: AppBar(
        title: Text("CodelabWidgetListView"),
    ),
    body:
    ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context,index){
          return Container(
            height: 80,
            color: Colors.amber[_colors[index]],
            alignment: Alignment.center,
            child: Center(child: Text(_items[index])),
          );
        })
        )
    );

  }

}