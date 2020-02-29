import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CodelabHttp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "CodelabHttp",
        home: Scaffold(
            appBar: AppBar(
              title: Text("CodelabHttp"),
            ),
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FutureBuilder<Album>(
                    future: getAlbum("flutter"),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(snapshot.data.title,style: TextStyle(color: Colors.lightGreen,fontSize: 20,fontWeight: FontWeight.bold),);
                      } else if (snapshot.hasError) {
                        return Text(snapshot.error,style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),);
                      }
                      return CircularProgressIndicator();
                    },
                  ),
                ],
              ),
            )));
  }

  Future<Album> getAlbum(String title) async {
    http.Response response = await http.post(
        'https://jsonplaceholder.typicode.com/albums',
        headers: <String, String>{
          'Content-Type': 'application/json;charset=UTF-8'
        },
        body: jsonEncode({"title": title}));
    if (response.statusCode == 201) {
      return Album.fromJson(json.decode(response.body));
    } else {
      throw Exception("failed!");
    }
  }
}

class Album {
  int id;
  String title;

  Album(this.id, this.title);

  Album.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        id = json['id'];
}
