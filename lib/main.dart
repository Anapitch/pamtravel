import 'package:flutter/material.dart';
import 'package:myapp/australia.dart';
import 'package:myapp/japan.dart';
import 'package:myapp/korea.dart';
import 'package:myapp/thailand.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
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
        title: Text("Travel Around The World"),
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new NetworkImage('https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
          ],
        ),
      ),
      drawer: menuDrawer(context),
    );
  }

  Widget menuDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new NetworkImage('https://poetsandquants.com/wp-content/uploads/sites/5/2020/08/country-flags.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          ListTile(
            title: Text("Thai"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Thai()),
              );
            },
          ),
          ListTile(
            title: Text("Japan"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Japan()),
              );
            },
          ),
          ListTile(
            title: Text("Korea"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Korea()),
              );
            },
          ),
          ListTile(
            title: Text("Australia"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Australia()),
              );
            },
          ),
        ],
      ),
    );
  }
}
