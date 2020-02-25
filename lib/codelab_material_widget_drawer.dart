import 'package:flutter/material.dart';


/**
 * matrial抽屉
 */
class CodelabMatrialWidgetDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CodelabMatrialWidgetDrawer",
      home: Scaffold(
        appBar: AppBar(
          title: Text("CodelabMatrialWidgetDrawer"),
        ),
        drawer: Drawer(
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context,index){
              return ListTile(
                title: Text("drawer item $index"),
                leading: Icon(Icons.message),
                onTap: (){
                  Navigator.pop(context);
                },
              );
          }),
        ),
      ),
    );
  }

}
