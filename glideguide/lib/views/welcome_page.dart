// Importing necessary Dart and Flutter packages.
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:glideguide/services/firebase_cloud_storage.dart';
import 'package:glideguide/views/ask_page.dart';

// Global variables to store airport data.
List<dynamic> airportList = [];
Map<String, dynamic> airportMap = {};

// The WelcomePage StatefulWidget which will display the initial screen.
class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

// The state class for WelcomePage.
class _WelcomePageState extends State<WelcomePage> {
  // FirebaseCloudStorage instance to interact with Firebase Firestore.
  late final FirebaseCloudStorage _firebaseCloudStorage;

  @override
  void initState() {
    super.initState();
    // Initialize FirebaseCloudStorage.
    _firebaseCloudStorage = FirebaseCloudStorage();
    // Load data when the widget is initialized.
    loadData();
  }

  // Method to load data from Firebase Firestore.
  void loadData() async {
    try {
      DocumentSnapshot documentSnapshot =
          await _firebaseCloudStorage.getAirportData();
      if (documentSnapshot.exists) {
        // Use a null check before accessing the data.
        Map<String, dynamic> data =
            documentSnapshot.data() as Map<String, dynamic>? ?? {};
        setState(() {
          // Use a null check and provide an empty list as a fallback.
          airportList = data["airport_lat_and_long"]?["airport_name_list"]
                  as List<dynamic>? ??
              [];
          airportMap =
              data["airport_lat_and_long"] as Map<String, dynamic>? ?? {};
        });
      } else {
        throw('Document does not exist on the database');
      }
    } catch (error) {
      throw('Error getting document: $error');
    }
  }

  // Method to navigate to AskPage.
  void navigateToAskPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const AskPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Building the UI of the Welcome page.
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Welcome text.
              const Text(
                'Welcome to Glide Guide',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Add some space
              const SizedBox(height: 20),
              // A button to navigate to the AskPage.
              ElevatedButton(
                onPressed: navigateToAskPage,
                child: const Text('Continue'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
