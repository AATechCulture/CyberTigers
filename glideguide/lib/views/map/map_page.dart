import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  final String query;
  const MapPage({super.key, required this.query});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  static const LatLng _latLng = LatLng(40.641766, -73.780968);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.query),
      ),
      body: const GoogleMap(
        initialCameraPosition: CameraPosition(target: _latLng, zoom: 13),
      ),
    );
  }
}
