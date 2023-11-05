import 'package:flutter/material.dart';
import 'package:glideguide/views/map/map_page.dart';

class OptionsPage extends StatefulWidget {
  final String searchQuery;

  const OptionsPage({Key? key, required this.searchQuery}) : super(key: key);

  @override
  State<OptionsPage> createState() => _OptionsPageState();
}

class _OptionsPageState extends State<OptionsPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> options = [
      {
        'title': 'Food and drinks',
        'imageUrl':
            'https://image.shutterstock.com/image-photo/healthy-food-clean-eating-selection-260nw-722718097.jpg'
      },
      {
        'title': 'Travel Essentials',
        'imageUrl':
            'https://m.media-amazon.com/images/I/71Z6Q3j9htL._SX679_.jpg'
      },
      {
        'title': 'Apparel and Footwear',
        'imageUrl':
            'https://www.powerreviews.com/wp-content/uploads/2022/07/wardrobe-22.png'
      },
      {
        'title': 'Electronics and Gadgets',
        'imageUrl':
            'https://www.shutterstock.com/image-photo/many-used-modern-electronic-gadgets-260nw-1457896679.jpg'
      },
      {
        'title': 'Jewelry and Watches',
        'imageUrl':
            'https://m.media-amazon.com/images/I/71I6g3ueuWL._AC_UX679_.jpg'
      },
      {
        'title': 'Health and Pharmacy Items',
        'imageUrl':
            'https://i.pinimg.com/originals/07/55/44/075544fd18c632ee3e90ba2b033b508c.png'
      },
      {
        'title': 'Toys and Games',
        'imageUrl':
            'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5934/5934923_sd.jpg'
      },
      {
        'title': 'Services',
        'imageUrl': 'https://cdn-icons-png.flaticon.com/512/950/950299.png'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Options for ${widget.searchQuery}'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: options.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                // MapPage(options[index]['title']);

                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MapPage(
                    query: options[index]['title'],
                  ),
                ));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Image.network(
                      options[index]['imageUrl'],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      options[index]['title'],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Locate',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
