import 'package:flutter/material.dart';
import 'package:transitnow/pages/home.dart';
import 'package:transitnow/pages/profile.dart';
import 'package:transitnow/pages/comment.dart';
import 'package:flutter_map/flutter_map.dart';
// ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart';

class LocationPage extends StatefulWidget { // Changed to StatefulWidget
  const LocationPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  double _mapHeight = 300; // Initial height of the map container
  double _savedPlacesHeight = 400; // Initial height of the saved places section

  final LatLng _initialPosition = LatLng(3.1390, 101.6869); // Example: Kuala Lumpur coordinates

  void _adjustMapHeight(DragUpdateDetails details) {
    setState(() {
      _mapHeight = (_mapHeight - details.delta.dy).clamp(200.0, 600.0); // Clamp height between 200 and 600
      _savedPlacesHeight = (600 - _mapHeight).clamp(100.0, 400.0); // Adjust saved places height inversely
    });
  }

  void _adjustSavedPlacesHeight(DragUpdateDetails details) {
    setState(() {
      _savedPlacesHeight = (_savedPlacesHeight + details.delta.dy).clamp(100.0, 400.0); // Clamp height between 100 and 400
      _mapHeight = (600 - _savedPlacesHeight).clamp(200.0, 600.0); // Adjust map height inversely
    });
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD2D2D2),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFF1D1D41), // Corrected dark blue color
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home, color: Colors.white, size: 34),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.message, color: Colors.white, size: 34),
                onPressed: () {
                  Navigator.push(context,
                   MaterialPageRoute(builder: (context) => CommentPage()));
                }, // Add functionality here
              ),
              IconButton(
                icon: Icon(Icons.location_on, color: Colors.white, size: 34),
                onPressed: () {}, // Add functionality here
              ),
              IconButton(
                icon: Icon(Icons.person, color: Colors.white, size: 34),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                }, // Add functionality here
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor:Color(0xFFD2D2D2),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text('Choose your destination',
        style: TextStyle(color: Colors.black, fontSize: 18),),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 7.0),
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search routes/places',
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.tune),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(height: 16), // Add spacing between TextField and map
                GestureDetector(
                  onVerticalDragUpdate: _adjustMapHeight, // Handle swipe gestures
                  child: Container(
                    height: _mapHeight, // Use adjustable height
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: FlutterMap(
                      options: MapOptions(
                        center: _initialPosition,
                        zoom: 14.0,
                      ),
                      layers: [
                        TileLayerOptions(
                          urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                          subdomains: ['a', 'b', 'c'],
                        ),
                        MarkerLayerOptions(
                          markers: [
                            Marker(
                              width: 80.0,
                              height: 80.0,
                              point: LatLng(3.1390, 101.6869), // Corrected coordinate format
                              builder: (ctx) => Icon(
                                Icons.location_on,
                                color: Colors.red,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0, // Start from the bottom
            left: 0,
            right: 0,
            child: GestureDetector(
              onVerticalDragUpdate: _adjustSavedPlacesHeight, // Handle swipe gestures
              child: Container(
                height: _savedPlacesHeight, // Use adjustable height
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      offset: Offset(0, -2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Saved Places',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold, 
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // Move crossAxisAlignment here
                          children: [
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0), // Add padding to move content to the right
                              child: Row( // Combine text and icon into a row
                                children: [
                                  Text(
                                    'Add More Places', // Placeholder for saved places content
                                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 8), // Add spacing between text and icon
                                  Icon(Icons.add_location_alt_outlined, size: 40, color: Color(0xFF1D1D41), 
                                  ),// Icon for adding location
                                ],
                              ),
                            ),
                            SizedBox(height: 16), // Add spacing between rows
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0), // Add padding to move icons to the right
                              child: Row( // First icon
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.apartment, size: 50, color: Colors.black),
                                  Text('Guest Hotel', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            SizedBox(height: 16), // Add spacing between rows
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0), // Add padding to move icons to the right
                              child: Row( // Second icon
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.restaurant, size: 50, color: Colors.black),
                                  Text('Meow Cafe', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            SizedBox(height: 16), // Add spacing between rows
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0), // Add padding to move icons to the right
                              child: Row( // Third icon
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.train, size: 50, color: Colors.black),
                                  Text('LRT Putrajaya Line', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Divider(thickness: 3,),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}