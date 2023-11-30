import 'package:flutter/material.dart';

void main() {
  runApp(MyCountScreen());
}

class MyCountScreen extends StatelessWidget {
  const MyCountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenCount(),
    );
  }
}

class ScreenCount extends StatefulWidget {
  const ScreenCount({super.key});

  @override
  State<ScreenCount> createState() => _ScreenCountState();
}

class _ScreenCountState extends State<ScreenCount> {
  //สร้าง fiele
  int _counter = 0;
  //สร้าง method
  void _incCount() {
    //print(_counter++);
    setState(() {
      _counter++;
    });
  }

  void _decCount() {
    //print(_counter--);
    setState(() {
      _counter--;
    });
  }

  void _refreshCount() {
    //print(_counter = 0);
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Counter App'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              print('Press Notifcation');
            },
            icon: Icon(Icons.notifications_on),
          ),
          IconButton(
            onPressed: () {
              print('Press Notifcation');
            },
            icon: Icon(Icons.notifications_off),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'PressButton',
              style: TextStyle(
                fontSize: 80.0,
                color: Colors.blue[800],
              ),
            ),
            Text(
              '$_counter',
              style: TextStyle(
                fontSize: 75.0,
                color: Colors.red[800],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FloatingActionButton(
              onPressed: _incCount,
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: _decCount,
              child: Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: _refreshCount,
              child: Icon(Icons.refresh),
            )
          ],
        ),
      ),
    );
  }
}
