import 'package:flutter/material.dart';

class CodelabLayoutExample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Layout Example",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Layout Example"),
        ),
        body: Center(child: generatorContainerRow()),
      ),
    );
  }

  Widget generatorContainerRow() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Expanded(
            child: Container(
          padding: EdgeInsets.all(10),
          height: 200,
          color: Colors.red,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black38, border: Border.all()),
                    child: Text(
                      "Strawberry Pavlova",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black38, border: Border.all()),
                      child: Text(
                        "Pavlova is a meringue-based dessert named after the Russian ballerine Anna Pavlova.Pavlova featues a crisp crsut and soft,light inside,topped with fruit and whipped cream.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )),
        Expanded(child: Image.asset("images/guigui.jpg"))
      ],
    );
  }
}
