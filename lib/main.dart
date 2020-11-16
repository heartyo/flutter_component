import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_component/chip_widget.dart';
import 'package:flutter_component/dialog_widget.dart';
import 'package:flutter_component/expand_widget.dart';

import 'entity/content_entity.dart';
import 'flexiablespaceBar_widget.dart';
import 'grid_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ContentEntity> _listEntity;

  @override
  void initState() {
    super.initState();
  }

  void getData() {
    List _list = [
      {
        'route': ChipPage(
          title: 'Chip标签',
        ),
        'title': 'Chip标签'
      },
      {
        'route': DialogPage(
          title: 'Dialog弹窗',
        ),
        'title': 'Dialog弹窗'
      },
      {
        'route': ExpandedPage(
          title: 'Expanded组件',
        ),
        'title': 'Expanded组件'
      },
      {
        'route': GridsPage(
          title: 'Grid组件',
        ),
        'title': 'Grid组件'
      },
      {
        'route': FlexiableSpaceBarPage(
          title: 'FlexiableSpaceBar组件',
        ),
        'title': 'FlexiableSpaceBar组件'
      },
    ];
    _listEntity = _list.map((f) => new ContentEntity.fromJson(f)).toList();
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 组件'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Wrap(
              spacing: 10.0,
              children: _listEntity.map((f) {
                return children(context, f);
              }).toList(),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget children(BuildContext context, ContentEntity entity) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return entity.route;
        }));
      },
      child: Text(entity.title),
    );
  }
}
