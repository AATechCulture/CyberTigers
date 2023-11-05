import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Upcoming Flight Details',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                leading: const Icon(Icons.flight_takeoff),
                title: const Text('Flight SX-304 to Tokyo'),
                subtitle: const Text('Departure: 12th Dec 2023, 10:45 AM'),
                trailing: Chip(
                  label: const Text('Gate 23B'),
                  backgroundColor: Colors.lightBlue.shade100,
                ),
              ),
            ),
            Text(
              'Prohibited Items in Airport',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                leading: Icon(Icons.warning_amber_rounded),
                title: Text('Liquids over 100ml'),
                subtitle: Text('Includes beverages, gels, and aerosols.'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.warning_amber_rounded),
                title: Text('Sharp Objects'),
                subtitle:
                    Text('Scissors, knives, or razors must be checked in.'),
              ),
            ),
            Text(
              'Travel Tips',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                leading: Icon(Icons.lightbulb_outline),
                title: Text('Check-in Online'),
                subtitle: Text('Avoid long queues by checking in online.'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.lightbulb_outline),
                title: Text('Carry On Essentials'),
                subtitle: Text(
                    'Keep medications, chargers, and valuable items with you.'),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Implement your action
                },
                child: const Text('More Tips'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
