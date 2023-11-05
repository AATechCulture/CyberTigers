import 'package:flutter/material.dart';
import 'package:glideguide/views/forecast/widgets/destination_input.dart';
import 'package:glideguide/views/forecast/widgets/flight_information_widget.dart';
import 'package:glideguide/views/forecast/widgets/traffic_prediction.dart';
import 'package:glideguide/views/forecast/widgets/weather_information.dart';

/// Displays information related to travel including destination input,
/// flight information, and traffic predictions.
class TravelInfoScreen extends StatelessWidget {
  const TravelInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Using a ListView.builder could be more efficient if the list is long or items are generated dynamically.
    return Scaffold(
      body: ListView(
        children: const <Widget>[
          DestinationInputWidget(),
          FlightInformationWidget(),
          TrafficPredictionWidget(),
          WeatherForecastWidget(),
        ],
      ),
    );
  }
}
