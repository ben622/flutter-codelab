import 'package:flutter/material.dart';

class CodelabMaterialWidgetSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "CodelabMaterialWidgetSliverAppBar",
        home: Scaffold(
            body: new CustomScrollView(
          slivers: <Widget>[
            new SliverAppBar(
              title: Text("CodelabMaterialWidgetSliverAppBar"),
              expandedHeight: 300.0,
              floating: true, //滑动时是否悬浮
              pinned: false,//标题栏是否固定
              snap: false,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  "http://www.zhangchuany.com/photo2.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            new SliverFixedExtentList(
              itemExtent: 50.0,
              delegate: new SliverChildBuilderDelegate(
                (context, index) => new ListTile(
                  title: new Text("Item $index"),
                ),
                childCount: 30,
              ),
            ),
          ],
        )));
  }
}
