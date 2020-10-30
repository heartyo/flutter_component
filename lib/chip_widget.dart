import 'package:flutter/material.dart';

class ChipPage extends StatefulWidget {
  final String title;

  const ChipPage({Key key, this.title}) : super(key: key);

  @override
  _ChipPageState createState() => _ChipPageState();
}

class _ChipPageState extends State<ChipPage> {

  List<String> tags = ['Android','ios','windows','linux','macos'];

  String select='';
  List<String> selected = [];

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
            Wrap(
              spacing: 8.0,
              children: <Widget>[
                Chip(label: Text('flutter'),backgroundColor: Colors.orange,),
                Chip(label: Text('flutter'),backgroundColor: Colors.orange,avatar: CircleAvatar(child: Text('0'),),),
                Chip(label: Text('flutter'),avatar: CircleAvatar(backgroundImage: NetworkImage('https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1604026632&di=9cc8df02cc43ac517eea8d36585063d8&src=http://a3.att.hudong.com/14/75/01300000164186121366756803686.jpg')),),
                Chip(label: Text('Android'),onDeleted: (){

                },deleteIcon: Icon(Icons.delete),deleteIconColor: Colors.redAccent,deleteButtonTooltipMessage: '删除这个标签',),


              ],
            ),
            Divider(
              color: Colors.grey,
              height: 50,
            ),
            Wrap(
              spacing: 8.0,
              children: tags.map((tag){
                return Chip(label: Text(tag),onDeleted: (){
                 setState(() {
                   tags.remove(tag);
                 });
                },);

              }).toList(),
            ),
            Divider(
              color: Colors.grey,
              height: 50,
            ),

            Text('$select'),
            Wrap(
              spacing: 8.0,
              children: tags.map((tag){
                return ActionChip(label: Text(tag),onPressed: (){
                  setState(() {
                   select=tag;
                  });
                },);

              }).toList(),
            ),
            Divider(
              color: Colors.grey,
              height: 50,
            ),

            Text('${selected.toString()}'),
            Wrap(
              spacing: 8.0,
              children: tags.map((tag){
                return FilterChip(label: Text(tag),
                  onSelected: (bool value) {
                    if (selected.contains(tag)) {
                      selected.remove(tag);
                    }else{
                      selected.add(tag);
                    }
                    setState(() {

                    });
                },);

              }).toList(),
            ),
            Divider(
              color: Colors.grey,
              height: 50,
            ),

            Wrap(
              spacing: 8.0,
              children: tags.map((tag){
                return ChoiceChip(label: Text(tag),
                  selected: false,
                 );

              }).toList(),
            ),
            Divider(
              color: Colors.grey,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
