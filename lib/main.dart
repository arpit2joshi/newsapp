import 'package:flutter/material.dart';
import 'package:news/screens/discover.dart';
import 'package:news/screens/headlines.dart';
import 'package:news/screens/homepage.dart';
import 'package:news/news_api.dart';
import 'package:news/screens/user_info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final screen = [
    HomePage(),
    Headline(categoryType: 'world'),
    Discover(),
    User(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[800],
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.cyan[800]),
          BottomNavigationBarItem(
              icon: Icon(Icons.track_changes),
              title: Text('Headlines'),
              backgroundColor: Colors.cyan[800]),
          BottomNavigationBarItem(
              icon: Icon(Icons.fiber_new),
              title: Text('Discover'),
              backgroundColor: Colors.cyan[800]),
          BottomNavigationBarItem(
              icon: Icon(Icons.fingerprint),
              title: Text('Profile'),
              backgroundColor: Colors.cyan[800]),
        ],
      ),
    );
  }
}
