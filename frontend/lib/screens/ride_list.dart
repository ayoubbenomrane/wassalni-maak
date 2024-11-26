import 'package:flutter/material.dart';

class RideCard extends StatelessWidget {
  final String timeStart;
  final String timeEnd;
  final String start;
  final String end;
  final String price;
  final String driver;
  final String distance;
  final int totalSeats;
  final int reservedSeats;

  RideCard({
    required this.timeStart,
    required this.timeEnd,
    required this.start,
    required this.end,
    required this.price,
    required this.driver,
    required this.distance,
    required this.totalSeats,
    required this.reservedSeats,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  timeStart,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Spacer(),
                Text(
                  price,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.red),
                ),
              ],
            ),
            SizedBox(height: 8),
            // Horizontal Line with Circles
            Row(
              children: [
                // Start Circle
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
                  ],
                ),
                SizedBox(width: 8),
                // Connecting Line
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.red,
                  ),
                ),
                SizedBox(width: 8),
                // End Circle
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
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            // Start and End Labels
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  start,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  end,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                for (int i = 1; i <= totalSeats; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Icon(
                      Icons.airline_seat_recline_normal,
                      size: 20,
                      color: i <= reservedSeats ? Colors.red : Colors.grey,
                    ),
                  ),
              ],
            ),
            Divider(height: 20, thickness: 1),
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey.shade300,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      driver,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      distance,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RideListPage extends StatelessWidget {
  final List<Map<String, dynamic>> rides = [
    {
      'timeStart': '01:00 PM',
      'timeEnd': '04:00 PM',
      'start': 'Sfax',
      'end': 'Tunis',
      'price': '25 DT/Person',
      'driver': 'Ayoub Ben Omrane',
      'distance': '10 mins away',
      'totalSeats': 4,
      'reservedSeats': 2,
    },
    {
      'timeStart': '03:15 PM',
      'timeEnd': '06:30 PM',
      'start': 'Sfax',
      'end': 'Tunis',
      'price': '20 DT/Person',
      'driver': 'Salah',
      'distance': '15 mins away',
      'totalSeats': 5,
      'reservedSeats': 3,
    },
  ];

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
        title: Text(
          'Sfax to Tunis',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: rides.length,
          itemBuilder: (context, index) {
            final ride = rides[index];
            return RideCard(
              timeStart: ride['timeStart'],
              timeEnd: ride['timeEnd'],
              start: ride['start'],
              end: ride['end'],
              price: ride['price'],
              driver: ride['driver'],
              distance: ride['distance'],
              totalSeats: ride['totalSeats'],
              reservedSeats: ride['reservedSeats'],
            );
          },
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
