import 'package:flutter/material.dart';
import 'package:flutter_component/chip_widget.dart';

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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 组件'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Wrap(
              spacing: 10.0,
              children: <Widget>[
                RaisedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return ChipPage(title: 'Chip标签',);
                  }) );

                },child: Text('Chip标签'),color: Colors.white,),
                RaisedButton(onPressed: (){},child: Text('Chip标签'),color: Colors.white,),
                RaisedButton(onPressed: (){},child: Text('Chip标签'),color: Colors.white,),
                RaisedButton(onPressed: (){},child: Text('Chip标签'),color: Colors.white,),
                RaisedButton(onPressed: (){},child: Text('Chip标签Chip标签'),color: Colors.white,),
                RaisedButton(onPressed: (){},child: Text('Chip标签Chip标签'),color: Colors.white,),
                RaisedButton(onPressed: (){},child: Text('Chip'),color: Colors.white,),
                RaisedButton(onPressed: (){},child: Text('Chip'),color: Colors.white,),
                RaisedButton(onPressed: (){},child: Text('Chip'),color: Colors.white,),
              ],
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
