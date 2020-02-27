import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:codelab/user.dart';

var ojson = "{\"name\":\"zhangsan\",\"email\":\"zhangsan@gmail.com\"}";

class CodelabJsonSerializable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CodelabJsonSerializable",
      home: Scaffold(
        appBar: AppBar(
          title: Text("CodelabJsonSerializable"),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Map map = jsonDecode(ojson);
                  User user = User.fromJson(map);
                  print("name:${user.name},email:${user.email}");
                  String json = jsonEncode(user);
                  print(json);
                },
                child: Text("useJsonDecode"),
              )
            ],
          ),
        ),
      ),
    );
  }

}
