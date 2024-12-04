import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    print('Button Pressed $_counter times!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Counter App', style: TextStyle(color: Colors.white) ,),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.touch_app,
              size: 100,
              color: Colors.deepPurple,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text(
                'Press Me!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                shadowColor: Colors.deepPurpleAccent,
                elevation: 10,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Button Pressed $_counter times!',
              style: TextStyle(fontSize: 18, color: Colors.deepPurple, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            Text(
              'Press the button to see how many times it’s pressed!',
              style: TextStyle(fontSize: 16, color: Colors.deepPurple[600]),
            ),
          ],
        ),
      ),
    );
  }
}

