import 'package:flutter/material.dart';

/**
 * 提供默认的banner、背景颜色等API Widget.
 */
class CodelabWidgetScaffold extends StatelessWidget{
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CodelabWidgetScaffold Title"),
      ),
      body:Container(
        alignment: Alignment.center,
        child: Text("CodelabWidgetScaffold $_count"),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment Counter',
        child: const Icon(Icons.access_time),
      ),
    );
  }

}