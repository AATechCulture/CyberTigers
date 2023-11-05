import 'package:flutter/material.dart';

class FlightInformationWidget extends StatelessWidget {
  const FlightInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        title: Text('Upcoming flight Details'),
        subtitle: Text('Flight AB1234, Departing: 10:00 AM, Arriving: 2:00 PM'),
        trailing: Icon(Icons.airplanemode_active),
      ),
    );
  }
}
