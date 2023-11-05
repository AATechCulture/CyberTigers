import 'package:http/http.dart' as http;
import 'dart:convert';

const String googleApiKey = 'AIzaSyB5drgmtGokGM1xHtZ3X4BfN9EZ43r0Hdw';

Future<Map<String, dynamic>> fetchTrafficData({
  required String origin,
  required String destination,
  required DateTime departureTime,
}) async {
  final String encodedOrigin = Uri.encodeComponent(origin);
  final String encodedDestination = Uri.encodeComponent(destination);
  final int departureTimeInSeconds =
      departureTime.millisecondsSinceEpoch ~/ 1000;

  final String url = 'https://maps.googleapis.com/maps/api/directions/json?'
      'origin=$encodedOrigin&'
      'destination=$encodedDestination&'
      'departure_time=$departureTimeInSeconds&'
      'traffic_model=best_guess&'
      'key=$googleApiKey';

  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load traffic data');
  }
}
