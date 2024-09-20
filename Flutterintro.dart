import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple UI App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Simple App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text Widget for Welcome Message
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Welcome to My Simple App!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            
            SizedBox(height: 20), // Spacing between widgets

            // ElevatedButton Widget
            ElevatedButton(
              onPressed: () {
                print('Button Pressed!'); // Print message to the console
              },
              child: Text('Click Me!'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
            ),
            
            SizedBox(height: 20), // Spacing between widgets

            // Image Widget that loads from the Internet
            Image.network(
              'https://flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png',
              height: 150,
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
