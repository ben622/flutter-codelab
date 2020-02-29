import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'codelab_column.dart';
import 'codelab_widget_text.dart';
import 'codelab_widget_container.dart';
import 'codelab_widget_stack.dart';
import 'codelab_widget_scaffold.dart';
import 'codelab_layout_example_1.dart';
import 'codelab_widget_aspectration.dart';
import 'codelab_widget_wrap.dart';
import 'codelab_widget_table.dart';
import 'codelab_widget_listview.dart';
import 'codelab_widget_constrainedbox.dart';
import 'codelab_material_widget_sliverappbar.dart';
import 'codelab_widget_slivers.dart';
import 'codelab_material_widget_drawer.dart';
import 'codelab_material_widget_pageview.dart';
import 'codelab_material_widget_buttons.dart';
import 'codelab_widget_navigator.dart';
import 'codelab_material_widget_bottomnavigationbar.dart';
import 'codelab_material_widget_tabbar.dart';
import 'codelab_material_widget_dialogs.dart';

import 'codelab_json.dart';
import 'codelab_json_serializable.dart';
import 'codelab_http.dart';
import 'codelab_localization.dart';


void main() {
  //runApp(MyApp());
  //runApp(MyWidget());
  //runApp(CodelabWidgetText());
  //runApp(CodelabWidgetContainer());
  //runApp(CodelabWidgetStack());
  //runApp(CodelabWidgetScaffold());
  //runApp(CodelabLayoutExample1());
  //runApp(CodelabWidgetAspectRation());
  //runApp(CodelabWidgetWrap());
  //runApp(CodelabWidgetTable());
  //runApp(CodelabWidgetListView());
  //runApp(CodelabWidgetConstrainedBox());
  //runApp(CodelabMaterialWidgetSliverAppBar());
  //runApp(CodelabWidgetSlivers());
  //runApp(CodelabMatrialWidgetDrawer());
  //runApp(CodelabMaterialWidgetPageView());
  //runApp(CodelabMaterialWidgetButtons());
  //runApp(CodelabWidgetNavigator());
  //runApp(CodelabMaterialWidgetBottomNavigationBar());
  //runApp(CodelabMaterialWidgetTabBar());
  //runApp(CodelabMaterialWidgetDialogs());
  //runApp(CodelabJson());
  //runApp(CodelabJsonSerializable());
  //runApp(CodelabHttp());
  runApp(CodelabLocalization());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Welcome to Flutter', home: RandomWords());
  }
}

///////////////////////////////////////////////////
//在Flutter中可见的View（Android定义）都称之为Widget，Widget分为StatefulWidget（有状态Widget）和StatelessWidget（无状态Widget）
//例如：在Android中一个不会因用户交互而导致内容发生变化的ImageView就称之为StatelessWidget，反过来如果因为与用户交互而发生内容改变的View则称为StatefulWidget
//实现一个StatefulWidget至少需要两个类；
//1、StatefulWidget类
//2、State类
///////////////////////////////////////////////////
class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RandomWordsState();
}

//用于维护RandomWords中的状态。
class RandomWordsState extends State<RandomWords> {
  final _wordPairs = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Scaffold(
      appBar: AppBar(
        title: Text("Startup Name Generator"),
      ),
      body: _buildListView(),
    );
  }

  //构造一个ListView Widget.
  Widget _buildListView() {
    return ListView.builder(itemBuilder: (context, i) {
      if (i.isOdd) return Divider();
      final index = i ~/ 2;
      if (index >= _wordPairs.length) {
        //重新生成数据追加到数组中
        _wordPairs.addAll(generateWordPairs().take(10));
      }
      return buildListViewItem(_wordPairs[index]);
    });
  }

  Widget buildListViewItem(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}
