import 'package:flutter/material.dart';
import 'package:profile_card/screen/profileCard.dart';

class welcomePage extends StatefulWidget {
  const welcomePage({super.key});

  @override
  State<welcomePage> createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();
    _animation = Tween<double>(begin: 2.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 22, 32),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: _animation,
              child: Container(
                width: 400,
                height: 100,
                child: Center(
                  child: Text(
                    'Welcome to Flutter Development',
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), 
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 10,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              onPressed: () {
                // Navigate to the other page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileCard()),
                );
              },
              child: Text(
                'Go to Other Page',
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
