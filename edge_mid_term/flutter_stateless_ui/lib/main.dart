// main fucntion start from here
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //added custom widget in home
      home: _Home_page() ,
    );
  }
}

//make a custom widgets and it not accessable in other file
class _Home_page extends StatelessWidget {
  const _Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('Flutter Stateless UI'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // added-star-icon
            Icon(Icons.star,   size: 100,
              color: Colors.amber),
            //added-text widget
            Text("Star Widget App",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
