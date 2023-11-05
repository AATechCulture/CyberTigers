/// Airport class represents the data for an airport including
/// its name and geographical coordinates.
class Airport {
  final String name;
  final double latitude;
  final double longitude;

  /// Constructor for creating an Airport instance.
  Airport({
    required this.name,
    required this.latitude,
    required this.longitude,
  });

  /// Named constructor for creating an Airport instance from a JSON object.
  factory Airport.fromJson(Map<String, dynamic> json) {
    // Validates that required fields are present and are of the correct type.
    if (json['name'] is String &&
        json['lat'] is String &&
        json['long'] is String) {
      return Airport(
        name: json['name'] as String,
        latitude: double.tryParse(json['lat']) ?? 0.0,
        longitude: double.tryParse(json['long']) ?? 0.0,
      );
    } else {
      throw const FormatException('Invalid or missing properties in JSON data');
    }
  }
}
