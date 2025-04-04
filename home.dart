import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                icon: Icon(Icons.home, color: Colors.white, size: 34,),
                onPressed: () {}, // Add functionality here
              ),
              IconButton(
                icon: Icon(Icons.message, color: Colors.white, size: 34,),
                onPressed: () {}, // Add functionality here
              ),
              IconButton(
                icon: Icon(Icons.location_on, color: Colors.white, size: 34,),
                onPressed: () {}, // Add functionality here
              ),
              IconButton(
                icon: Icon(Icons.person, color: Colors.white, size: 34,),
                onPressed: () {}, // Add functionality here
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: 
          CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFFD2D2D2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )
              ),
              child: Column(
                crossAxisAlignment: 
                CrossAxisAlignment.start,
                children: [
                 Row(
                  mainAxisAlignment: 
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: 
                      CrossAxisAlignment.start,
                      children: [
                        Text('Hi, User', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
                        ),
                       ),
                       Text('Tell us about your plan today',
                       style: TextStyle(fontSize: 19,
                       color: Color.fromRGBO(110, 110, 110, 1),
                       ),
                       ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/profile.jpg"),
                    ),
                  ],
                 ),
                 SizedBox(height: 20,),
                 Container(
                  padding: 
                  EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: 
                    BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Color.fromARGB(255, 124, 124, 124),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search for Transportation/Activities',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(Icons.filter_list, color: 
                      Color.fromRGBO(119, 119, 119, 1), ),
                    ],
                  ),
                 ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(padding: 
            EdgeInsets.symmetric(horizontal: 20),
            child: Text('Transportation',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            ),
            SizedBox(height: 13,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Card(
                    elevation: 4, 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Container( // Added consistent container
                      padding: EdgeInsets.symmetric(horizontal: 53, vertical: 61),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage('assets/London Underground.jpg'), // Corrected image property
                                fit: BoxFit.cover, // Added fit property
                              ),
                            ),
                            height: 50, // Added height for proper rendering
                            width: 50, // Added width for proper rendering
                          ),
                          SizedBox(height: 10), // Add spacing between image and text
                          Text('Train', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // Corrected spacing between cards
                  Card(
                    elevation: 4, 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Container( // Added consistent container
                      padding: EdgeInsets.symmetric(horizontal: 55, vertical: 61),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/CERES BUS.jpg', // Replace with your image path
                            height: 50, // Adjust size as needed
                          ),
                          SizedBox(height: 10),
                          Text('Bus', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // Corrected spacing between cards
                  Card(
                    elevation: 4, 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Container( // Added consistent container
                      padding: EdgeInsets.symmetric(horizontal: 34, vertical: 61),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/Reasons You Should Befriend With Pune to Kolhapur Taxi Driver.jpg', // Replace with your image path
                            height: 50, // Adjust size as needed
                          ),
                          SizedBox(height: 10),
                          Text('Taxi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Activities',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Container( // Added consistent container
                      padding: EdgeInsets.symmetric(horizontal: 47, vertical: 61),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/Located in central Kuala Lumpur, Corus Hotel Kuala….jpg', // Replace with your image path
                            height: 50, // Adjust size as needed
                          ),
                          SizedBox(height: 10),
                          Text('Hotels', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Container( // Added consistent container
                      padding: EdgeInsets.symmetric(horizontal: 42, vertical: 61),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/Pin 2.jpg', // Replace with your image path
                            height: 50, // Adjust size as needed
                          ),
                          SizedBox(height: 10),
                          Text('Popular', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Container( // Added consistent container
                      padding: EdgeInsets.symmetric(horizontal: 27, vertical: 61),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/tom (waxp56) - Profile _ Pinterest.jpg', // Replace with your image path
                            height: 50, // Adjust size as needed
                          ),
                          SizedBox(height: 10),
                          Text('Restaurant', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}