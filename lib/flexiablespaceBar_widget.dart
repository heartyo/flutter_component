import 'package:flutter/material.dart';

class FlexiableSpaceBarPage extends StatefulWidget {
  final String title;

  const FlexiableSpaceBarPage({Key key, this.title}) : super(key: key);

  @override
  _FlexiableSpaceBarPageState createState() => _FlexiableSpaceBarPageState();
}

class _FlexiableSpaceBarPageState extends State<FlexiableSpaceBarPage> {
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

    );
  }
}

