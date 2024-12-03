import 'package:flutter/material.dart';

class RideDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ride Date and Price
            Text(
              'Wed 13 Nov',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total price for 1 passenger',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  '25 DT',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            // Time, Start, Destination, and Line
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text('01:00 PM', style: TextStyle(fontSize: 16)),
                    SizedBox(height: 8),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.red,
                          child: CircleAvatar(
                            radius: 3,
                            backgroundColor: Colors.white,
                          ),
                        ),
                        Container(
                          width: 2,
                          height: 30,
                          color: Colors.red,
                        ),
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.red,
                          child: CircleAvatar(
                            radius: 3,
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text('04:00 PM', style: TextStyle(fontSize: 16)),
                  ],
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sfax',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 48), // Line height
                    Text(
                      'Tunis',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            // Driver Information
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blueAccent.shade100,
                  child: Icon(Icons.person, size: 30, color: Colors.white),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ayoub Ben Omrane',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 16),
                        SizedBox(width: 4),
                        Text(
                          '4.5/5 - 13 ratings',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            // Contact Driver Section (Clickable)
            GestureDetector(
              onTap: () {
                // Add your contact logic here
                print('Contact Ayoub Ben Omrane clicked!');
              },
              child: Row(
                children: [
                  Icon(Icons.chat_bubble, color: Colors.red),
                  SizedBox(width: 8),
                  Text(
                    'Contact Ayoub Ben Omrane',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios, size: 16, color: Colors.red),
                ],
              ),
            ),
            Divider(height: 32, thickness: 1),
            // Seats and Vehicle Info
            Row(
              children: [
                Icon(Icons.event_seat, size: 24, color: Colors.grey),
                SizedBox(width: 8),
                Text(
                  'Max, 2 in the back seats',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.directions_car, size: 24, color: Colors.grey),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Clio 4',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Red',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 32),
            // Request for Ride Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add request ride logic here
                  print('Request for ride clicked!');
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text(
                  'Request for ride',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_car), label: 'Your rides'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Publish'),
          BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
