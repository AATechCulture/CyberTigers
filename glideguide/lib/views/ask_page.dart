import 'package:flutter/material.dart';
import 'package:glideguide/views/explore/homepage.dart';

// Class names should be descriptive and CamelCased.
class AskPage extends StatefulWidget {
  const AskPage({Key? key}) : super(key: key); // Use nullable types for constructor parameters.

  @override
  _AskPageState createState() => _AskPageState();
}

// Private class names should also be CamelCased.
class _AskPageState extends State<AskPage> {
  // Use meaningful names for TextEditingController.
  final TextEditingController _airportController = TextEditingController();
  final TextEditingController _flightCodeController = TextEditingController();

  // This function navigates to the HomePage widget.
  void _navigateToHomePage(BuildContext context) {
    // Handle navigation inside a try-catch to deal with any potential exceptions.
    try {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const HomePage(),
      ));
    } catch (e) {
      // Ideally log the error.
      print('Navigation error: $e');
    }
  }

  @override
  void dispose() {
    // Controllers should be disposed to release resources.
    _airportController.dispose();
    _flightCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Glide Guide',
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // Centers the title if it's a standard design choice.
      ),
      body: SingleChildScrollView(
        // SingleChildScrollView should be used to prevent overflow when keyboard appears.
        child: Column(
          children: <Widget>[
            const SizedBox(height: 80),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Navigate your flight effortlessly with our all-in-one app, your ultimate airport companion.',
                textAlign: TextAlign.center, // Ensures text is centered.
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _airportController,
                decoration: const InputDecoration(
                  labelText: 'Enter an airport name or airport code',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.search),
                ),
                onSubmitted: (_) {
                  _navigateToHomePage(context);
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Or use your flight code',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _flightCodeController,
                decoration: const InputDecoration(
                  labelText: 'Flight code',
                  border: OutlineInputBorder(),
                ),
                onSubmitted: (_) {
                  _navigateToHomePage(context);
                },
              ),
            ),
            ElevatedButton(
              onPressed: () => _navigateToHomePage(context),
              child: const Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}
