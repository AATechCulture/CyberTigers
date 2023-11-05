import 'package:flutter/material.dart';

class DestinationInputWidget extends StatelessWidget {
  const DestinationInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Your Final Destination'),
      subtitle: const Text('Please confirm your final destination.'),
      trailing: const Icon(Icons.keyboard_arrow_right),
      onTap: () {},
    );
  }
}
