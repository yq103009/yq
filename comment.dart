import 'package:flutter/material.dart';
import 'package:transitnow/pages/home.dart';
import 'package:transitnow/pages/profile.dart';
import 'package:transitnow/pages/location.dart';

class CommentPage extends StatelessWidget {
 

  const CommentPage({super.key}); // Updated constructor

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
                onPressed: () {}, // Add functionality here
              ),
              IconButton(
                icon: Icon(Icons.location_on, color: Colors.white, size: 34),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LocationPage()),
                  );
                }, // Add functionality here
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
        title: const Text('Check reviews before booking!',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search reviews',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.tune),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column( // Changed from Row to Column
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row( // Wrap avatar and username in a Row
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                            ),
                            const SizedBox(width: 10), // Add spacing between avatar and username
                            Text(
                              'Username', // Replace with dynamic username if available
                              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8,), // Add spacing between username and comment
                        Text(
                          'This is a sample comment/review.', // Replace with dynamic comment if available
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        const SizedBox(height: 16,), // Adjusted spacing
                        Row( // Wrap containers in a Row
                          children: [
                            Padding( // Move margin here
                              padding: const EdgeInsets.only(right: 8),
                              child: ClipRRect( // Wrap the first container
                                borderRadius: BorderRadius.circular(15), // Add radius
                                child: Container(
                                  height: 170,
                                  width: 150,
                                  color: const Color.fromARGB(255, 150, 150, 150),
                                ),
                              ),
                            ),
                            const SizedBox(width: 7), // Add spacing between containers
                            ClipRRect( // Wrap the second container
                              borderRadius: BorderRadius.circular(15), // Add radius
                              child: Container(
                                height: 170,
                                width: 150,
                                color: const Color.fromARGB(255, 150, 150, 150),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60),
        ),
        onPressed: () {
          // Add your comment action here
        },
        backgroundColor: Color.fromARGB(255, 93, 140, 211), 
        child: Icon(Icons.add, size: 55, color: Colors.white,),
      ),
    );
  }
}



