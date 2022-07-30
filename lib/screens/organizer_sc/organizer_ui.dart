import 'package:flutter/material.dart';

TextEditingController eventController = TextEditingController();
TextEditingController venueController = TextEditingController();
TextEditingController dateController = TextEditingController();
TextEditingController timeController = TextEditingController();
TextEditingController attendeesController = TextEditingController();

class organizer_ui extends StatelessWidget {
  final String email;

  const organizer_ui({
    Key? key,
    // Constructor
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome ' + email + ' !',
        ),
        centerTitle: true,
      ),
      body: Material(
        child: ListView(children: <Widget>[
          Container(
            // Event
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              'Add Events',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            // Event
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: eventController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Event',
              ),
            ),
          ),
          Container(
            // Venue
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: venueController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Venue',
              ),
            ),
          ),
          Container(
            // Date
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: dateController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Date',
              ),
            ),
          ),
          Container(
            // Time
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: timeController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Time',
              ),
            ),
          ),
          Container(
            // Maximum Number of Attendees
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: timeController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Maximum Number of Attendees',
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: Text('Add Event'),
                onPressed: () {},
              )),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              'Events',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 30),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Event: Book Donation',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Venue: Library',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Date: August 28, 2022',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Time: 9:00 AM - 3:00 PM',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Total Attendees: 41 / 500',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ]),
          SizedBox(height: 30),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Event: Recognition',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Venue: Social Hall',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Date: September 18, 2022',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Time: 8:00 AM - 12:00 PM',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Total Attendees: 412 / 1000',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ]),
          SizedBox(height: 30),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Event: Sumba Dance Event',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Venue: Covered Court',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Date: October 14, 2022',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Time: 7:00 AM - 9:00 AM',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Total Attendees: 17 / 100',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ]),
          SizedBox(height: 30),
        ]),
      ),
    );
  }
}
