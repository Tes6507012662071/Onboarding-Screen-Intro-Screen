import 'package:flutter/material.dart';
import 'introduction_screen.dart'; // Import the IntroScreen

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('75 MOTOGP'),
        centerTitle: true,
        automaticallyImplyLeading: false, // Remove the back arrow
      ),
      backgroundColor: Colors.black, // Set background color to black
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'ADIOSS!! Welcome to 75MOTOGP',
              style: TextStyle(fontSize: 23, color: Colors.white), // Set text color to white for contrast
            ),
            const SizedBox(height: 20), // Add some spacing
            ElevatedButton(
              onPressed: () {
                // Navigate to the Introduction Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IntroScreen()),
                );
              },
              child: const Text(
                'Go to Introduction',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
