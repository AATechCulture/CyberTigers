import 'package:flutter/material.dart';

/// A widget to display on-time performance information related to traffic.
///
/// It shows a title and subtitle to give the user a brief traffic overview,
/// accompanied by an icon indicative of the traffic status.
class OnTimePerformanceInformation extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData iconData;

  /// Constructs an [OnTimePerformanceInformation] widget.
  ///
  /// [title] is the title of the card which defaults to 'Traffic Prediction'.
  /// [subtitle] is the subtitle of the card which defaults to 'Moderate traffic expected upon arrival.'
  /// [iconData] is the trailing icon which defaults to [Icons.traffic].
  const OnTimePerformanceInformation({
    super.key,
    this.title = 'Traffic Prediction',
    this.subtitle = 'Moderate traffic expected upon arrival.',
    this.iconData = Icons.traffic,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          title,
          // Using the Theme ensures that the text style responds to theme changes.
          style: Theme.of(context).textTheme.titleLarge,
        ),
        subtitle: Text(
          subtitle,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        trailing: Icon(
          iconData,
          // Use the primary color of the theme for the icon.
          color: Theme.of(context).colorScheme.primary,
          // Providing a semantic label for accessibility.
          semanticLabel: 'Traffic status icon',
        ),
      ),
    );
  }
}
