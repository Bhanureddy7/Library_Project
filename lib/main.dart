import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int current_index = 0;
  final tabs=[
    Center(child: Text('Welcome To Home Tab'),),
    Center(child: Text('Welcome To Search Tab'),),
    Center(child: Text('Welcome To Profile'),),
    Center(child: Text('Welcome To Settings'),),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text('Brilliant School'),
          ),
        ),
        body:

        tabs[current_index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: current_index,
          backgroundColor: Colors.white,
          type:BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.grey,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Person',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.green,
            ),
          ],

          onTap: (index) {
            setState(() {
              current_index = index;
            });
          },
        ),
      ),
    );
  }
}
