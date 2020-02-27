import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CodelabMaterialWidgetDialogs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CodelabMaterialWidgetDialogs",
      //home: CodelabMaterialWidgetAlertDialog(),
      home: CodelabMaterialWidgetSnackBar(),
    );
  }
}

class CodelabMaterialWidgetAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CodelabMaterialWidgetAlertDialog"),
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: () => {
              showCupertinoDialog(
                  context: context,
                  builder: (_) {
                    return CupertinoAlertDialog(
                      title: Text("Accept?"),
                      content: Text("Do you accept?"),
                      actions: <Widget>[
                        CupertinoDialogAction(
                          child: Text("No"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        CupertinoDialogAction(
                          child: Text("Yes"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    );
                  })
            },
            child: Text("Show CupertinoAlertDialog"),
          ),
          RaisedButton(
            onPressed: () => {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: Text("Accept"),
                      content: Text("Do you accept?"),
                      actions: <Widget>[
                        FlatButton(
                            child: Text("No"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),
                        FlatButton(
                            child: Text("Yes"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            })
                      ],
                    );
                  })
            },
            child: Text("Material AlertDialog"),
          )
        ],
      )),
    );
  }
}

class CodelabMaterialWidgetSnackBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("CodelabMaterialWidgetSnackBar"),
        ),
        body: Builder(
          builder: (context){
            return  RaisedButton(
              onPressed: (){
                final snackBar = SnackBar(
                  content: Text("Please Check Yoeur Input!"),
                  action: SnackBarAction(label: "OK",onPressed: (){
                    Scaffold.of(context).removeCurrentSnackBar();
                  }),

                );
                //context必须是scaffold的context.
                Scaffold.of(context).showSnackBar(snackBar);
              },
              child: Text("Show SnackBar"),
            );
          }
        )
      )
    );
  }

}
