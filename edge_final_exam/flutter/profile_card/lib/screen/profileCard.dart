import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    // Trigger the animation after the widget is built
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _opacity = 1.0; // Fade-in effect
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(seconds: 1), // Animation duration
        child: Card(
          margin: EdgeInsets.zero, // No margin so it spans the full screen
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // No rounded corners
          ),
          elevation: 4,
          child: Container(
            width: double.infinity, // Full width of the screen
            height: MediaQuery.of(context).size.height, // Full height of the screen
            color: Colors.white, // White background
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Profile Image
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/158209281?v=4'), // Replace with your image URL
                  ),
                  const SizedBox(height: 20),
                  // Name
                  const Text(
                    'Asaduzzaman',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Description
                  const Text(
                    'Flutter Developer',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
