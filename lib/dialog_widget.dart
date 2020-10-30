import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  final String title;

  const DialogPage({Key key, this.title}) : super(key: key);

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                showCommonDialog(context);
              },
              child: Text(
                '普通Dialog弹窗',
                style: TextStyle(color: Colors.black),
              ),
            ),
            RaisedButton(
              onPressed: () {
                showAlertDialogDemo(context);
              },
              child: Text(
                'AlertDialog弹窗',
                style: TextStyle(color: Colors.black),
              ),
            ),
            RaisedButton(
              onPressed: () {
                showAboutDialogDemo(context);
              },
              child: Text(
                'AboutDialog弹窗',
                style: TextStyle(color: Colors.black),
              ),
            ),
            RaisedButton(
              onPressed: () {
                showSimpleDialog(context);
              },
              child: Text(
                'SimpleDialog弹窗',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showCommonDialog(BuildContext context) {
    showDialog(
      context: context,
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 200,
              width: double.infinity,
              child: Center(
                child: Text(
                  '这是一个普通弹窗',
                  style: TextStyle(color: Colors.redAccent, fontSize: 20),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    '取消',
                    style: TextStyle(color: Colors.redAccent, fontSize: 20),
                  )),
            )
          ],
        ),
      ),
    );
  }

  void showSimpleDialog(BuildContext context) {
    showDialog<Null>(
        context: context,
        builder: (BuildContext context) => new SimpleDialog(
              title: Text('选择'),
              children: <Widget>[
                SimpleDialogOption(child:  Text('ios'),onPressed: (){
                  Navigator.of(context).pop();

                },),
                SimpleDialogOption(child:  Text('android'),onPressed: (){
                  Navigator.of(context).pop();

                },),
                SimpleDialogOption(child:  Text('windows'),onPressed: (){
                  Navigator.of(context).pop();
                },),

              ],
            ));
  }

  void showAboutDialogDemo(BuildContext context) {
    showAboutDialog(
        context: context,
        applicationIcon: Icon(Icons.map),
        applicationName: '这是标题',
        applicationVersion: '3.1.0');
  }

  void showAlertDialogDemo(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) => new AlertDialog(
        title: Text('标题'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('这是内容...'),
            Text('这是内容...'),
            Text('这是内容...'),
            Text('这是内容...'),
            Text('这是内容...'),
            Text('这是内容...'),
            Text('这是内容...'),
            Text('这是内容...'),
            Text('这是内容...'),
            Text('这是内容...'),
            Text('这是内容...'),
            Text('这是内容...'),
          ],
        ),
        actions: <Widget>[
          FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('取消'))
        ],
      ),
    );
  }
}
