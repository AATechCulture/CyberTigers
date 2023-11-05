// Standard Flutter material design library import.
import 'package:flutter/material.dart';
// Import custom assets, typically image paths, icons, etc.
import 'package:glideguide/assest/assest.dart';
// Import the MapPage widget from the views/map directory.
import 'package:glideguide/views/map/map_page.dart';

// OptionsPage widget, a StatefulWidget that manages its own state.
class OptionsPage extends StatefulWidget {
  // The searchQuery string is passed to this widget upon creation.
  final String searchQuery;

  // Constructor with key and required searchQuery parameter.
  const OptionsPage({Key? key, required this.searchQuery}) : super(key: key);

  @override
  // Create state for this StatefulWidget.
  State<OptionsPage> createState() => _OptionsPageState();
}

// The state class for OptionsPage that holds the state.
class _OptionsPageState extends State<OptionsPage> {
  @override
  Widget build(BuildContext context) {
    // Scaffold provides the basic visual layout structure of the material design.
    return Scaffold(
      // SafeArea ensures the body content is not overlapped by the system status bar or notches.
      body: SafeArea(
        // GridView.builder creates a grid with lazy loading of items.
        child: GridView.builder(
          // Sets padding for all sides of the GridView.
          padding: const EdgeInsets.all(16.0),
          // The grid delegate controls the layout of the grid.
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of items in a row.
            crossAxisSpacing: 10.0, // Space between items horizontally.
            mainAxisSpacing: 10.0, // Space between items vertically.
          ),
          // The number of items the grid will display.
          itemCount: options.length,
          // The itemBuilder creates and returns a new widget for each item in the grid.
          itemBuilder: (BuildContext context, int index) {
            // Card provides a material design card that can be tapped.
            return Card(
              // Clip behavior for the card, in this case clipping any content that overflows.
              clipBehavior: Clip.antiAlias,
              // InkWell provides the ripple effect on tap.
              child: InkWell(
                onTap: () {
                  // Navigator is used for routing to the MapPage with a new search query.
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MapPage(
                      query:
                          "${options[index]['title']} near ${widget.searchQuery}",
                    ),
                  ));
                },
                // Column widget is used for vertical arrangement of child widgets.
                child: Column(
                  // Align children in a cross axis (horizontal in a column).
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // Align children in the main axis (vertical in a column).
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Expanded widget allows its child to fill the available space.
                    Expanded(
                      // Image.network fetches and displays an image from a URL.
                      child: Image.network(
                        options[index]['imageUrl'],
                        fit: BoxFit
                            .cover, // Cover the entire space of the parent.
                      ),
                    ),
                    // Padding adds space around the text.
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      // Text widget displays the title of the option.
                      child: Text(
                        options[index]['title'],
                        // Align text to the center of its container.
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold, // Make text bold.
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
