import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  final String title;

  const ExpandedPage({Key key, this.title}) : super(key: key);

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
        title: Text(title),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                color: Colors.redAccent,
              ),
              Expanded(
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.green,
                ),
                flex: 1,
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.orange,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                color: Colors.redAccent,
              ),
              Flexible(
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.green,
                ),
                flex: 1,
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.orange,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
