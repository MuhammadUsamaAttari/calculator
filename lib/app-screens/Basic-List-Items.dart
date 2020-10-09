import 'package:flutter/material.dart';
import 'package:flutter_app/app-screens/home.dart';

void main() {
  runApp(MaterialApp(
    // debugShowCheckedModeBanner: false,
    title: "Exploring UI widgets",
    // home: Home(),
    home: Scaffold(
      appBar: AppBar(title: Text('Basic List View'),),
      body:getListView(),
    ),
  ));
}

Widget getListView() {

  var listView = ListView(
    children: <Widget>[

      ListTile(
        leading: Icon(Icons.landscape),
        title: Text('Landscape'),
        subtitle: Text('Beautiful View !'),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          debugPrint('Landscape tapped');
        },
      ),

      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text('Windows'),
      ),

      ListTile(
        leading: Icon(Icons.phone),
        title: Text('Phone'),
      ),

      Text('Yet another element in List'),

      Container(color: Colors.red, height: 50.0,)

    ],
  );
  return listView;
}