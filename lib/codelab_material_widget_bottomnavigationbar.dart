import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CodelabMaterialWidgetBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "CodelabMaterialWidgetBottomNavigationBar",
        home: MainContainer());
  }
}

class MainContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainContainerState();
  }
}

class MainContainerState extends State<MainContainer> {
  var bodys = <String>["home", "me"];
  var selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CodelabMaterialWidgetBottomNavigationBar"),
      ),
      body: Center(
        child: Text(
          bodys[selectIndex],
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => {
            setState(() {
                  selectIndex = index;
                })
          },
          currentIndex: selectIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(icon: Icon(Icons.school), title: Text("Me"))
          ]),
    );
  }
}
