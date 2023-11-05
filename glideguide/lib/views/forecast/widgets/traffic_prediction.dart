import 'package:flutter/material.dart';

/// Displays a card with a traffic prediction.
///
/// Shows a traffic status and an associated icon.
class TrafficPredictionWidget extends StatelessWidget {
  final String predictionText;
  final IconData predictionIcon;

  /// Creates a [TrafficPredictionWidget].
  ///
  /// The [predictionText] defaults to 'Moderate traffic expected upon arrival.'
  /// and [predictionIcon] defaults to [Icons.traffic].
  const TrafficPredictionWidget({
    super.key,
    this.predictionText =
        'Moderate traffic expected upon arrival from the airport to your final destination.',
    this.predictionIcon = Icons.traffic,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          'Traffic Prediction',
          // Use the theme for styling text.
          style: Theme.of(context).textTheme.titleMedium,
        ),
        subtitle: Text(
          predictionText,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        trailing: Icon(
          predictionIcon,
          // Use the theme for icon color.
          color: Theme.of(context).iconTheme.color,
          // Providing a semantic label for accessibility.
          semanticLabel: 'Traffic prediction',
        ),
      ),
    );
  }
}
