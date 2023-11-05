import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

/// FirebaseCloudStorage is a singleton class that handles
/// all interactions with the Cloud Firestore 'airport' collection.
class FirebaseCloudStorage {
  // Singleton instance for FirebaseCloudStorage.
  static final FirebaseCloudStorage _shared =
      FirebaseCloudStorage._sharedInstance();

  // Private constructor for the singleton instance.
  FirebaseCloudStorage._sharedInstance();

  // Factory constructor that returns the singleton instance.
  factory FirebaseCloudStorage() => _shared;

  // Reference to the 'airport' collection in Firestore.
  final airportCollection = FirebaseFirestore.instance.collection("airport");

  /// Fetches data for a specific airport document from Firestore.
  Future<DocumentSnapshot> getAirportData() async {
    // Obtain the 'airport' collection reference (though it's already available as a class field).
    CollectionReference airportCollection =
        FirebaseFirestore.instance.collection('airport');

    // Retrieve the document with the specific ID from the 'airport' collection.
    DocumentSnapshot documentSnapshot =
        await airportCollection.doc('DZqL1gCHpMKd6WunWltA').get();

    // Log the document data for debugging purposes.
    log(documentSnapshot.data().toString());

    // Return the document snapshot containing the airport data.
    return documentSnapshot;
  }
}
