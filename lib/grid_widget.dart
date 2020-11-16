import 'package:flutter/material.dart';

class GridsPage extends StatelessWidget {
  final String title;

  const GridsPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 10.0,
        children: <Widget>[
          Card(
            child: GridTile(
              header: GridTileBar(
                title: Text('title',style: TextStyle(color: Colors.black),),
                subtitle: Text('subtitle',style: TextStyle(color: Colors.black),),
                leading: Icon(Icons.print,color: Colors.green,),
                trailing: Icon(Icons.chevron_right),
              ),
              footer: Text('footer'),
              child: Center(
                child: Image.network(
                    'https://www.tuacg.com/wp-content/uploads/thumb/2020/07/fill_w346_h260_g0_mark_4.jpg'),
              ),
            ),
          ),
          buildCard(
              'https://www.tuacg.com/wp-content/uploads/thumb/2020/07/fill_w346_h260_g0_mark_O8A9887.jpg'),
          buildCard(
              'https://www.tuacg.com/wp-content/uploads/thumb/2020/07/fill_w346_h260_g0_mark_30.jpg'),
          buildCard(
              'https://www.tuacg.com/wp-content/uploads/thumb/2020/07/fill_w346_h260_g0_mark_12-3.jpg'),
          buildCard(
              'https://www.tuacg.com/wp-content/uploads/thumb/2020/07/fill_w346_h260_g0_mark_tuacg.com-6.jpg'),
          GridTileBar(
            title: Text('title',style: TextStyle(color: Colors.black),),
            subtitle: Text('subtitle',style: TextStyle(color: Colors.black),),
            leading: Icon(Icons.print,color: Colors.green,),
            trailing: Icon(Icons.chevron_right),
          ),
          GridPaper(
            child:   buildCard(
                'https://www.tuacg.com/wp-content/uploads/thumb/2020/07/fill_w346_h260_g0_mark_1-38.jpg'),
          ),
          GridPaper(
            child:   buildCard(
                'https://www.tuacg.com/wp-content/uploads/thumb/2020/07/fill_w346_h260_g0_mark_42-1.jpg'),
          )
        ],
      ),
    );
  }

  Card buildCard(url) {
    return Card(
      child: Image.network(url),
    );
  }
}
