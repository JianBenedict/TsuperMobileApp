import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jeeps In Route'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      backgroundColor: Color.fromRGBO(255, 246, 143, 1),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Current Location
            SizedBox(
              height: 60,
              child: InkWell(
                onTap: () {
                  _editLocation(context, 'Current Location');
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person, color: Colors.black), // People icon
                      SizedBox(width: 10),
                      Text(
                        'Current Location',
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Destination
            SizedBox(
              height: 80,
              child: InkWell(
                onTap: () {
                  _editLocation(context, 'Destination');
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on, color: Colors.black), // Location icon
                      SizedBox(width: 10),
                      Text(
                        'Destination',
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Image
            Image(
              image: AssetImage('meps.png'),
              width: 450,
              height: 450,
            ),
            SizedBox(height: 20),

            // Back to Home button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 255, 251, 1).withOpacity(0.7), // Matte yellow background
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Back to Home',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),   
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to handle editing the location
  void _editLocation(BuildContext context, String location) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit $location'),
          content: TextFormField(
            initialValue: location,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}


class FindJeepPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find Jeep'),
      ),
      body: Center(
        child: Text('JEEP PAGE'),
      ),
    );
  }
}

class PayOnlinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pay Online'),
      ),
      body: Center(
        child: Text('Pay Online Page'),
      ),
    );
  }
}

class ReceiptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receipt', style: TextStyle(fontFamily: 'Poppins')), // Set font family
        leading: Icon(Icons.receipt),
      ),
      backgroundColor: Color.fromRGBO(255, 246, 143, 1), // Setting background color
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0), // Adding horizontal padding
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20), // Adding vertical space
              Text(
                'Payment',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins', // Set font family
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/jeeplogo.png',
                height: 100,
              ),
              SizedBox(height: 20),
              Text(
                'Successfully paid by',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins', // Set font family
                ),
              ),
              SizedBox(height: 10),
              Icon(
                Icons.person,
                size: 50,
              ),
              SizedBox(height: 10),
              Text(
                'Username',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins', // Set font family
                ),
              ),
              SizedBox(height: 20), // Add vertical space between "Username" and "Amount"
              Text(
                'Amount: \$50.00',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins', // Set font family
                ),
              ),
              SizedBox(height: 10), // Add vertical space between "Amount" and "Date"
              Text(
                'Date: February 12, 2024',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins', // Set font family
                ),
              ),
              SizedBox(height: 10), // Add vertical space between "Date" and "Time"
              Text(
                'Time: 10:00 AM',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins', // Set font family
                ),
              ),
              Spacer(),
              SizedBox(height: 20), // Add vertical space between "Thank You" and "Done" button
              Text(
                'Thank You!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins', // Set font family
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Navigate back to the previous screen (homepage)
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 163, 167, 58),
                    onPrimary: Colors.white,
                    padding: EdgeInsets.all(16.0),
                  ),
                  child: Text(
                    'Done',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 20), // Adding additional vertical space at the bottom
            ],
          ),
        ),
      ),
    );
  }
}
