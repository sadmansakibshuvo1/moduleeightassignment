import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: OrientationWidget(),
      ),
    );
  }
}

class OrientationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return orientation == Orientation.portrait
            ? PortraitLayout()
            : LandscapeLayout();
      },
    );
  }
}

class PortraitLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/images/ione.jpg'), // Replace with your circular image
          ),
          SizedBox(height: 2),
          Text(
            'Sadman',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(height: 10),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) {
              return Image.asset('assets/images/itwo.jpg'); // Replace with your grid images
            },
            itemCount: 9, // Number of grid items
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }
}

class LandscapeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/images/ione.jpg'), // Replace with your circular image
          ),
          SizedBox(height: 10),
          Text(
            'Sadman',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/itwo.jpg',
                      fit: BoxFit.cover, // Adjust the fit property as needed
                    ),
                  ),
                  SizedBox(height: 5),

                ],
              );
            },
            itemCount: 6, // Number of grid items
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }
}
