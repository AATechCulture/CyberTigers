import 'package:flutter/material.dart';
import 'package:glideguide/views/explore/optionspage.dart';
import 'package:glideguide/views/forecast/forcast_page.dart';
import 'package:glideguide/views/forecast/widgets/information.dart';

/// HomePage provides the structure for the main screen of the app
/// with navigation through a BottomNavigationBar.
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Holds the current tab index
  late String query = ""; // Holds the current search query

  /// Generates the list of widgets for the bottom tabs
  List<Widget> _widgetOptions() {
    return <Widget>[
      OptionsPage(searchQuery: query), // Explore tab content
      const ForecastPage(), // Forecast tab content
      const Information(), // Locate tab content
      // Additional tabs go here
    ];
  }

  /// Updates the tab selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Glide Guide'),
        // AppBar styling if needed
      ),
      body: Center(
        // Uses the method to get the current tab's content
        child: _widgetOptions().elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gps_fixed),
            label: 'Forecast',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Information',
          ),
          // Additional items for tabs go here
        ],
        currentIndex: _selectedIndex, // Current tab index
        selectedItemColor:
            Colors.amber[800], // Highlight color for selected tab
        onTap: _onItemTapped, // Method called on tapping a tab
      ),
    );
  }
}
