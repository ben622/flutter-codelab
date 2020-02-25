import 'package:flutter/material.dart';

/**
 * Slivers.
 */
class CodelabWidgetSlivers extends StatelessWidget {
  final List<Color> colorList = [
    Colors.red,
    Colors.orange,
    Colors.green,
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.pink,
    Colors.teal,
    Colors.deepPurpleAccent
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "CodelabWidgetSliverList",
        home: Scaffold(
          appBar: AppBar(
            title: Text("CodelabWidgetSliverList"),
          ),
          body: CustomScrollView(
            slivers: <Widget>[
              generatorTitle("Sliver Grid"),
              SliverGrid.count(
                crossAxisCount: 3,
                children:
                colorList.map((item) => Container(color: item)).toList(),
              ),
              generatorTitle("Sliver List"),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                (context, index) => new ListTile(
                  title: new Text("Item $index"),
                ),
                childCount: 30,
              ))
            ],
          ),
        ));
  }

  /**
   * CustomScrollView的子组件必须是sliver系列组件，否则需要使用SliverToBoxAdapter进行包装
   */
  Widget generatorTitle(String title) {
    return SliverToBoxAdapter(
        child: Container(
      height: 50,
      alignment: Alignment.center,
      color: Colors.lightGreen,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
    ));
  }
}
