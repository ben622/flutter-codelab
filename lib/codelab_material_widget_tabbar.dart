import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * TabBar和TabBarView必须指定controller或者使用DefaultTabController进行包裹.
 */
class CodelabMaterialWidgetTabBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //var tabController = TabController(length: 4,);
    return MaterialApp(
        title: "CodelabMaterialWidgetTabBar",
        home: Scaffold(
          appBar: AppBar(
            title: DefaultTabController(
              length: 4,
              child:Container(
                  child: TabBar(
                    indicatorColor: Colors.red,
                    indicatorWeight: 5,
                    tabs: <Widget>[
                      Tab(text: "A",icon: Icon(Icons.ac_unit)),
                      Tab(text: "B",icon: Icon(Icons.message)),
                      Tab(text: "C",icon: Icon(Icons.wifi)),
                      Tab(text: "D",icon: Icon(Icons.accessible_forward))
                    ],
                  )
              ) ,
            )
          ),
          body:
          DefaultTabController(
            length: 4,
            child:  TabBarView(
              children: <Widget>[
                Center(child: Text("A",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
                Center(child: Text("B",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
                Center(child: Text("C",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
                Center(child: Text("D",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)))
              ],
            ),
          )
        ));
  }

}
