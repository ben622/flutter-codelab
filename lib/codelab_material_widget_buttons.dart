import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CodelabMaterialWidgetButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CodelabMaterialWidgetButtons",
      home: Scaffold(
        appBar: AppBar(
          title: Text("CodelabMaterialWidgetButtons"),
        ),
        body: Center(
          child: generatorRaisedButton(),
        ),
      ),
    );
  }

  Widget generatorRaisedButton() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          textColor: Colors.red,
          focusColor: Colors.purple,
          onPressed: ()=>{},
          child: const  Text("Button",style: TextStyle(fontSize: 16))
        ),
        SizedBox(height: 20,),
        RaisedButton(
          elevation: 5.0,
          padding: EdgeInsets.all(0.0),
          onPressed: ()=>{},
          textColor: Colors.white,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5)
                ]
              )
            ),
            padding: EdgeInsets.all(10.0),
            child: Text("Button",style: TextStyle(fontSize: 16),),
          ),
        )
      ],
    );

  }

  Widget generatorButtonBar() {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      buttonTextTheme: ButtonTextTheme.normal,
      children: <Widget>[Text("Button1")],
    );
  }
}
