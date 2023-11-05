import 'package:flutter/material.dart';
import 'package:glideguide/views/forecast/widgets/travel_info_screen.dart';

/// Represents the forecast page.
///
/// Displays weather information and travel-related details.
class ForecastPage extends StatelessWidget {
  const ForecastPage({super.key});

  @override
  Widget build(BuildContext context) {
    // It's a good practice to avoid using 'const' for high-level widgets like Scaffold
    // if they might need to be rebuilt with different contents.
    return const Scaffold(
      body: TravelInfoScreen(),
    );
  }
}

/// A widget that shows travel weather information in a card.
///
/// It can potentially be expanded to display dynamic data by accepting parameters.
class TravelWeatherWidget extends StatelessWidget {
  const TravelWeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Using Theme.of(context) to ensure consistent styling.
      color: Theme.of(context).cardColor,
      child: const ListTile(
        title: Text('Weather Forecast'),
        subtitle: Text('Sunny, High: 25°C, Low: 15°C'),
        trailing: Icon(Icons.wb_sunny),
      ),
    );
  }
}
