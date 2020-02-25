import 'package:flutter/material.dart';


class CodelabWidgetTable extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CodelabWidgetTable",
      home: Scaffold(
        appBar: AppBar(
          title: Text("CodelabWidgetTable"),
        ),
        body:  Table(
            defaultVerticalAlignment:TableCellVerticalAlignment.bottom,
            //指定行宽度
            columnWidths: {1:FractionColumnWidth(0.5)},
            border: TableBorder.all(color: Colors.yellow),
            children: [
              TableRow(children: [
                Container(
                  width: 50,
                  height: 100,
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
                )
              ]),
              TableRow(children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.cyan,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.purple,
                )
                ,
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.lightGreen,
                )
              ])
            ],
          ),
      )
    );
  }

}
