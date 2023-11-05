import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/// A widget that displays a map page, with the map centered on a predefined location.
///
/// Accepts a search query string to be displayed on the app bar.
class MapPage extends StatefulWidget {
  final String query;

  /// Creates a [MapPage].
  ///
  /// The [query] parameter must not be null.
  const MapPage({super.key, required this.query});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  // Defining a constant for the initial camera position.
  static const CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(40.641766, -73.780968),
    zoom: 13,
  );

  // Google Map Controller instance.
  GoogleMapController? _controller;

  // Handles the map creation and stores the controller for later use.
  void _onMapCreated(GoogleMapController controller) {
    _controller = controller;
  }

  @override
  void dispose() {
    // Dispose the Google Map controller when the widget is removed from the
    // widget tree to avoid memory leaks.
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.query),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: _initialCameraPosition,
      ),
    );
  }
}
