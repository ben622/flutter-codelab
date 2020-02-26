import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/**
 * navigator and route.
 */
class CodelabWidgetNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CodelabWidgetNavigator First Activity.",
      //路由
      routes: <String,WidgetBuilder>{
        //"/":(context)=> FirstActivity(),
        "/secound":(context)=> SecoundActivity("zhangsan")
      },

      home: FirstActivity(),
    );
  }
}

class FirstActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CodelabWidgetNavigator First Activity."),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: ()=>{
            //Navigator.push(context, MaterialPageRoute(builder: (context) => SecoundActivity("Administrator")))
            Navigator.of(context).pushNamed("/secound")
          },
          child: Text("Launch Second Activity."),
        ),
      ),
    );
  }

}


class SecoundActivity extends StatelessWidget{
  var name="";

  SecoundActivity(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hi $name"),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: ()=>{
              Navigator.pop(context)
            },
            child: Text("Back."),
          ),
        ),
    );
  }

}
