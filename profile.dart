import 'package:flutter/material.dart';
import 'package:transitnow/pages/home.dart';
import 'package:transitnow/pages/comment.dart';
import 'package:transitnow/pages/location.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 191, 198, 214),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60, // Fixed to use a single radius property
                  backgroundColor: Colors.white,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Username',
                      style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold), // Corrected font size
                    ),
                    const SizedBox(width: 5),
                    Icon(
                      Icons.edit,
                      size: 23,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 224, 229, 240),
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
              ],
            ),
            child: Column(
              children: [
                profileMenuItem('Profile Settings'),
                profileMenuItem('Inbox'),
                profileMenuItem('E-Wallet'),
                profileMenuItem('Bookings'),
                profileMenuItem('Customer Service'),
                profileMenuItem('Log Out'),
              ],
            ),
          ),
          Spacer(),
          BottomAppBar(
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LocationPage()),
                      );
                    }, // Add functionality here
                  ),
                  IconButton(
                    icon: Icon(Icons.person, color: Colors.white, size: 34),
                    onPressed: () {}, // Add functionality here
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget profileMenuItem(String title) {
    return ListTile(
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        // Add navigation or functionality here
      },
    );
  }
}