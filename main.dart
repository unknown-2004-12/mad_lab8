import 'package:flutter/material.dart'; // Import Flutter Material package

void main() {
  runApp(MyApp()); // Run the app
}

// Root widget of the app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo', // App title
      theme: ThemeData(primarySwatch: Colors.blue), // Theme color
      home: HomeScreen(), // Set HomeScreen as starting screen
      debugShowCheckedModeBanner: false, // Hide debug banner
    );
  }
}

// -------------------- FIRST SCREEN --------------------
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'), // App bar title
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Second Screen'), // Button label
          onPressed: () {
            // Navigate to SecondScreen using push
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}

// -------------------- SECOND SCREEN --------------------
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'), // Second screen title
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go Back to Home'), // Button to go back
          onPressed: () {
            Navigator.pop(context); // Go back to previous screen
          },
        ),
      ),
    );
  }
}
