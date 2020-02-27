import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

var ojson = "{\"name\":\"zhangsan\",\"email\":\"zhangsan@gmail.com\"}";

class CodelabJson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CodelabJson",
      home: Scaffold(
        appBar: AppBar(
          title: Text("CodelabJson"),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () => useJsonDecode(context),
                child: Text("useJsonDecode"),
              ),
              RaisedButton(
                onPressed: () => useModelSerializeJSON(),
                child: Text("useModelSerializeJSON"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void useJsonDecode(BuildContext context) {
    Map<String, dynamic> user = jsonDecode(ojson);
    print("name:${user["name"]},email:${user["email"]}");
  }

  void useModelSerializeJSON() {
    Map map = jsonDecode(ojson);
    User user = User.fromJson(map);
    print("name:${user.name},email:${user.email}");
    String json = jsonEncode(user);
    print(json);
  }
}

class User{
  String name;
  String email;

  User(this.name, this.email);

  User.fromJson(Map<String,dynamic> json)
    : name = json['name'], email = json['email'];

   Map<String,dynamic> toJson() {
     return {"name":name,"email":email};
   }
}
