import 'package:flutter/material.dart';

/// Displays a card with a weather forecast.
///
/// Shows a weather condition and an associated icon.
class WeatherForecastWidget extends StatelessWidget {
  final String forecastText;
  final IconData forecastIcon;

  /// Creates a [WeatherForecastWidget].
  ///
  /// The [forecastText] defaults to 'Partly cloudy with a chance of rain.'
  /// and [forecastIcon] defaults to [Icons.cloud].
  const WeatherForecastWidget({
    super.key,
    this.forecastText =
        'Partly cloudy with a chance of rain at your final destination',
    this.forecastIcon = Icons.cloud,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          'Weather Forecast',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        subtitle: Text(
          forecastText,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        trailing: Icon(
          forecastIcon,
          color: Theme.of(context).iconTheme.color,
          semanticLabel: 'Weather forecast',
        ),
      ),
    );
  }
}
